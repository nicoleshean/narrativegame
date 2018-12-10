using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using Ink.Runtime;

// This is a super bare bones example of how to play and display a ink story in Unity.
public class BasicInkExample : MonoBehaviour
{
	public Sprite kimmySprite;
	public Sprite danaSprite;
	public Sprite kimmyMomSprite;
	public Sprite danaMomSprite;
	public Sprite donnaSprite;
	public Sprite deanSprite;
	public Sprite blankSprite;

	/*public Sprite danaHouseSprite;
	public Sprite kimmyHouseSprite;
	public Sprite playgroundSprite;
	public Sprite downtownSprite;*/

	public GameObject danaHouseScene;
	public GameObject kimmyHouseScene;
	public GameObject playgroundScene;
	public GameObject downtownScene;

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
	private Image speakerPrefab;
	[SerializeField] 
	private Image locationPrefab;
	
	
	[SerializeField]
	private Canvas canvas;

	// Remove the default 
	// Creates a new Story object with the compiled story which we can then play!

	private void Start()
	{
		danaHouseScene.SetActive(false);
		kimmyHouseScene.SetActive(false);
		playgroundScene.SetActive(false);
		downtownScene.SetActive(false);
		
		story = new Story(_inkJsonAsset.text);
		RemoveChildren();
		if (!story.canContinue) return;
		var text = story.Continue();
		if (story.currentChoices.Count > 0)
		{
			for (var i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
				});
			}
		}
		CreateContentView(text);
	}

	private void Update()
	{
		RefreshView();
	}

	void RefreshView(){
		
		if (!Input.anyKeyDown) return;
		
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

		RemoveChildren();

		if (story.currentChoices.Count > 0)
		{
			for (var i = 0; i < story.currentChoices.Count; i++) {
				Choice choice = story.currentChoices [i];
				Button button = CreateChoiceView (choice.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choice);
					clickChoice.Play();
				});
			}
		}

		if (text.Contains("Downtown:"))
		{
			Debug.Log("downtown!");
			downtownScene.SetActive(true);
			location = downtown;
		}

		if (text.Contains("Playground:"))
		{
			playgroundScene.SetActive(true);
			location = playground;
		}

		if (text.Contains("Dana's House:"))
		{
			Debug.Log("dana's house!");
			danaHouseScene.SetActive(true);
			location = danaHouse;
		}

		if (text.Contains("Kimmy's House:"))
		{
			Debug.Log("kimmy's House!");
			kimmyHouseScene.SetActive(true);
			location = kimmyHouse;
		}

		if (text.Contains("Kimmy:"))
		{
			/*Debug.Log("Kimmy says");*/
			speaker = kimmy;
		}
		
		if (text.Contains("Dana:"))
		{
			/*Debug.Log("Dana says");*/
			speaker = dana;
		}
		
		if (text.Contains("Kimmy's Mom:"))
		{
			/*Debug.Log("Kimmy's Mom says");*/
			speaker = kimmyMom;
		}
		
		if (text.Contains("Mom:"))
		{
			/*Debug.Log("Dana's Mom says");*/
			speaker = danaMom;
		}
		
		if (text.Contains("Donna:"))
		{
			/*Debug.Log("Donna says");*/
			speaker = donna;
		}
			
		if (text.Contains("Dean:"))
		{
			/*Debug.Log("Dean says");*/
			speaker = dean;
		}

		if (text.Contains("=== Downtown"))
		{
			Debug.Log("Downtown");
		}
		
		CreateContentView(text);
	}
	
	void OnClickChoiceButton(Choice choice)
	{
		story.ChooseChoiceIndex(choice.index);
		RemoveChildren();
		var text = story.Continue();
		var choiceText = "";
		if (story.currentChoices.Count > 0)
		{
			for (var i = 0; i < story.currentChoices.Count; i++) {
				Choice choices = story.currentChoices [i];
				Button button = CreateChoiceView (choices.text.Trim ());
				// Tell the button what to do when we press it
				button.onClick.AddListener (delegate {
					OnClickChoiceButton (choices);
				});
			}
		}
		CreateContentView(text);
		
		//RefreshView();
		
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
			Debug.Log("Kimmy says");
			speaker = 0;
		}
		
		else if (speaker == dana)
		{
			speakerImage.sprite = danaSprite;
			Debug.Log("Dana says");
			speaker = 0;
		}

		else if (speaker == kimmyMom)
		{
			speakerImage.sprite = kimmyMomSprite;
			Debug.Log("Kimmy's Mom says");
			speaker = 0;
		}

		else if (speaker == danaMom)
		{
			speakerImage.sprite = danaMomSprite;
			Debug.Log("Dana's Mom says");
			speaker = 0;
		}

		else if (speaker == donna)
		{
			speakerImage.sprite = donnaSprite;
			Debug.Log("Donna says");
			speaker = 0;
		}

		else if (speaker == dean)
		{
			speakerImage.sprite = deanSprite;
			Debug.Log("Dean says");
			speaker = 0;
		}

		else
		{
			speakerImage.sprite = blankSprite;
			speaker = 0;
		}
	}
	
	void RemoveChildren () {
		int childCount = canvas.transform.childCount;
		for (int i = childCount - 1; i >= 0; --i) {
			GameObject.Destroy (canvas.transform.GetChild (i).gameObject);
		}
	}
	
	Button CreateChoiceView (string text) {
		// Creates the button from a prefab
		Button choice = Instantiate (buttonPrefab, new Vector3(0, -250, 0), Quaternion.identity) as Button;
		choice.transform.SetParent (canvas.transform, false);
		
		// Gets the text from the button prefab
		Text choiceText = choice.GetComponentInChildren<Text> ();
		choiceText.text = text;

		// Make the button expand to fit the text
		HorizontalLayoutGroup layoutGroup = choice.GetComponent <HorizontalLayoutGroup> ();
		layoutGroup.childForceExpandHeight = false;

		return choice;
	}
}	