using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour
{

	[SerializeField] private TagManager _tagManager;
	public Sprite kimmySprite;
	public Sprite danaSprite;
	public Sprite kimmyMomSprite;
	public Sprite danaMomSprite;
	public Sprite donnaSprite;
	public Sprite deanSprite;
	public Sprite blankSprite;

	private int kimmy = 1;
	private int dana = 2;
	private int kimmyMom = 3;
	private int danaMom = 4;
	private int donna = 5;
	private int dean = 6;

	private int speaker = 0;
	
	private int danaHouse = 1;
	private int kimmyHouse = 2;
	private int playground = 3;
	private int downtown = 4;
	
	private int location = 0;

	public AudioSource clickContinue;
	public AudioSource clickChoice;
	
	[SerializeField] private TextAsset _inkJsonAsset;
	[SerializeField] private Story story;
	
	// UI Prefabs
	[SerializeField]
	private Text textPrefab;
	[SerializeField]
	private Button buttonPrefab;
	[SerializeField]
	private Button mapButtonPrefab;
	[SerializeField] 
	private Image speakerPrefab;
	[SerializeField] 
	private Button dicePrefab;
	[SerializeField] 
	private Button frisbeePrefab;
	[SerializeField] 
	private Button ballPrefab;
	[SerializeField] 
	private Button chalkPrefab;
	[SerializeField] 
	private Button notepadPrefab;
	[SerializeField] 
	private Button ropePrefab;
	
	[SerializeField]
	private Canvas canvas;
	[SerializeField]
	private Canvas bottomCanvas;
	[SerializeField]
	private Canvas shopCanvas;
	[SerializeField]
	private Canvas inventoryCanvas;
	[SerializeField]
	private Canvas gameRulesCanvas;
	[SerializeField]
	private Canvas mapCanvas;

	private void Start()
	{
		
		story = new Story(_inkJsonAsset.text);
		RemoveChildren(canvas);
		if (!story.canContinue) return;
		var text = story.Continue();
		CreateContentView(text);
	}

	private void Update()
	{
		RefreshView();
	}

	void RefreshView(){
		
		if (!Input.anyKeyDown) return;
		
		
		if (story.currentTags.Count > 0)
		{
			_tagManager.WhenTagsExist(story.currentTags);
		}
		
		
		if (story.currentChoices.Count > 0)
		{
			for (var i = 0; i < story.currentChoices.Count; i++)
			{
				//KeyCode.Alpha1 = 49
				// "(KeyCode)49" casts 49 to the KeyCode enum
				if (Input.GetKeyDown((KeyCode) 49 + i))
				{
					story.ChooseChoiceIndex(i);
				}
			}
		}

		if (!story.canContinue) return;

		var text = story.Continue();
		clickContinue.Play();

		RemoveChildren(canvas);
		RemoveChildren(bottomCanvas);
		RemoveChildren(inventoryCanvas);
		RemoveChildren(shopCanvas);
		RemoveChildren(gameRulesCanvas);
		RemoveChildren(mapCanvas);

		if (story.currentChoices.Count > 0)
		{
		// BOTTOM BUTTONS
			if (_tagManager.buttonType == _tagManager.bottomButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choice = story.currentChoices[i];
					Button button = CreateBottomButtons(choice.text.Trim());
					// Tell the button what to do when we press it
					button.onClick.AddListener(delegate
					{
						OnClickChoiceButton(choice);
						clickChoice.Play();
					});
				}
			}
		// SHOP BUTTONS
			else if (_tagManager.buttonType == _tagManager.shopButton)
			{
				if (story.currentChoices.Count >= 2)
				{
					for (var i = 0; i < story.currentChoices.Count - 1; i++)
					{
						Choice choice = story.currentChoices[i];
						Button button = CreateInventoryButtons(choice.text.Trim(), shopCanvas);
						// Tell the button what to do when we press it
						button.onClick.AddListener(delegate
						{
							OnClickChoiceButton(choice);
							clickChoice.Play();
						});
					}
						Choice lastChoice = story.currentChoices[story.currentChoices.Count-1];
						Button lastButton = CreateBottomButtons(lastChoice.text.Trim());
						// Tell the button what to do when we press it
						lastButton.onClick.AddListener(delegate
						{
							OnClickChoiceButton(lastChoice);
							clickChoice.Play();
						});
				}
				else
				{
					for (var i = 0; i < story.currentChoices.Count; i++)
					{
						Choice choice = story.currentChoices[i];
						Button button = CreateBottomButtons(choice.text.Trim());
						// Tell the button what to do when we press it
						button.onClick.AddListener(delegate
						{
							OnClickChoiceButton(choice);
							clickChoice.Play();
						});
					}
				}
			}
		// INVENTORY BUTTONS
			else if (_tagManager.buttonType == _tagManager.inventoryButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choice = story.currentChoices[i];
					Button button = CreateInventoryButtons(choice.text.Trim(), inventoryCanvas);
					// Tell the button what to do when we press it
					button.onClick.AddListener(delegate
					{
						OnClickChoiceButton(choice);
						clickChoice.Play();
					});
				}
			}
		// GAME RULES BUTTONS
			else if (_tagManager.buttonType == _tagManager.gameRulesButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choice = story.currentChoices[i];
					Button button = CreateGameRulesButtons(choice.text.Trim());
					// Tell the button what to do when we press it
					button.onClick.AddListener(delegate
					{
						OnClickChoiceButton(choice);
						clickChoice.Play();
					});
				}
			}
			// MAP BUTTONS
			else if (_tagManager.buttonType == _tagManager.mapButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choice = story.currentChoices[i];
					Button button = CreateMapButtons(choice.text.Trim());
					// Tell the button what to do when we press it
					button.onClick.AddListener(delegate
					{
						OnClickChoiceButton(choice);
						clickChoice.Play();
					});
				}
			}
		}

		if (text.Contains("Kimmy:"))
		{
			text = text.Substring(6).Trim();
			speaker = kimmy;
		}
		
		if (text.Contains("Dana:"))
		{
			text = text.Substring(5).Trim();
			speaker = dana;
		}
		
		if (text.Contains("Kimmy's Mom:"))
		{
			text = text.Substring(12).Trim();
			speaker = kimmyMom;
		}
		
		if (text.Contains("Mom:"))
		{
			text = text.Substring(4).Trim();
			speaker = danaMom;
		}
		
		if (text.Contains("Donna:"))
		{
			text = text.Substring(6).Trim();
			speaker = donna;
		}
			
		if (text.Contains("Dean:"))
		{
			text = text.Substring(5).Trim();
			speaker = dean;
		}
		
		CreateContentView(text);
	}
	
	void OnClickChoiceButton(Choice choice)
	{
		story.ChooseChoiceIndex(choice.index);
		RemoveChildren(canvas);
		RemoveChildren(bottomCanvas);
		RemoveChildren(inventoryCanvas);
		RemoveChildren(shopCanvas);
		RemoveChildren(gameRulesCanvas);
		RemoveChildren(mapCanvas);
		var text = story.Continue();
		var choiceText = "";

		if (story.currentChoices.Count > 0)
		{
		// BOTTOM BUTTONS
			if (_tagManager.buttonType == _tagManager.bottomButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choices = story.currentChoices[i];
					Button button = CreateBottomButtons(choices.text.Trim());
					button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
				}
			}
		// SHOP BUTTONS
			else if (_tagManager.buttonType == _tagManager.shopButton)
			{
				if (story.currentChoices.Count >= 2)
				{
					for (var i = 0; i < (story.currentChoices.Count - 1); i++)
					{
						Choice choices = story.currentChoices[i];
						Button button = CreateInventoryButtons(choices.text.Trim(), shopCanvas);
						button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
					}
					Choice lastChoice = story.currentChoices[story.currentChoices.Count-1];
					Button lastButton = CreateBottomButtons(lastChoice.text.Trim());
					lastButton.onClick.AddListener(delegate { OnClickChoiceButton(lastChoice); });
				}
				else
				{
					for (var i = 0; i < story.currentChoices.Count; i++)
					{
						Choice choices = story.currentChoices[i];
						Button button = CreateBottomButtons(choices.text.Trim());
						button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
					}
				}
			}
		// INVENTORY BUTTONS
			else if (_tagManager.buttonType == _tagManager.inventoryButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choices = story.currentChoices[i];
					Button button = CreateInventoryButtons(choices.text.Trim(), inventoryCanvas);
					button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
				}
			}
		// GAME RULES BUTTONS
			else if (_tagManager.buttonType == _tagManager.gameRulesButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choices = story.currentChoices[i];
					Button button = CreateGameRulesButtons(choices.text.Trim());
					button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
				}
			}
		// MAP BUTTONS
			else if (_tagManager.buttonType == _tagManager.mapButton)
			{
				for (var i = 0; i < story.currentChoices.Count; i++)
				{
					Choice choices = story.currentChoices[i];
					Button button = CreateMapButtons(choices.text.Trim());
					button.onClick.AddListener(delegate { OnClickChoiceButton(choices); });
				}
			}
		}
		CreateContentView(text);
	}

	void CreateContentView(string text)
	{
		Text storyText = Instantiate(textPrefab, new Vector3(0, 100, 0), Quaternion.identity) as Text;
		storyText.text = text;
		storyText.transform.SetParent(canvas.transform, false);
		Image speakerImage = Instantiate(speakerPrefab) as Image; 
		speakerImage.transform.SetParent(canvas.transform, false);
		/*Image locationImage = Instantiate(locationPrefab) as Image;
		locationImage.transform.SetParent(canvas.transform, false);*/
		
		if (speaker == kimmy)
		{
			speakerImage.sprite = kimmySprite;
			speaker = 0;
		}
		
		else if (speaker == dana)
		{
			speakerImage.sprite = danaSprite;
			speaker = 0;
		}

		else if (speaker == kimmyMom)
		{
			speakerImage.sprite = kimmyMomSprite;
			speaker = 0;
		}

		else if (speaker == danaMom)
		{
			speakerImage.sprite = danaMomSprite;
			speaker = 0;
		}

		else if (speaker == donna)
		{
			speakerImage.sprite = donnaSprite;
			speaker = 0;
		}

		else if (speaker == dean)
		{
			speakerImage.sprite = deanSprite;
			speaker = 0;
		}

		else
		{
			speakerImage.sprite = blankSprite;
			speaker = 0;
		}
	}
	
	void RemoveChildren (Canvas canvas) {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}
	
	Button CreateBottomButtons (string text) 
	{	
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (bottomCanvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		return choice;
	}
	
	Button CreateMapButtons (string text) 
	{	
		Button choice = Instantiate (mapButtonPrefab) as Button;
		choice.transform.SetParent (mapCanvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		return choice;
	}
	
	Button CreateInventoryButtons (string text, Canvas canvas) 
	{	
		if (text.Contains("Dice"))
		{
			Button choice = Instantiate(dicePrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		if (text.Contains("Frisbee"))
		{
			Button choice = Instantiate(frisbeePrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		if (text.Contains("Ball"))
		{
			Button choice = Instantiate(ballPrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		if (text.Contains("Chalk"))
		{
			Button choice = Instantiate(chalkPrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		if (text.Contains("Notepad"))
		{
			Button choice = Instantiate(notepadPrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		if (text.Contains("Rope"))
		{
			Button choice = Instantiate(ropePrefab) as Button;
			choice.transform.SetParent (canvas.transform, false);

			return choice;
		}
		return null;
	}
	
	Button CreateGameRulesButtons (string text) 
	{	
		Button choice = Instantiate (buttonPrefab) as Button;
		choice.transform.SetParent (gameRulesCanvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		return choice;
	}
}	