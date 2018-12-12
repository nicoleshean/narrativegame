using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TagManager : MonoBehaviour
{

	public GameObject danaHouse;
	public GameObject kimmyHouse;
	public GameObject downtown;
	public GameObject playground;
	public GameObject shop;

	public GameObject dkdm;
	public GameObject dkdmkm;
	public GameObject dk;
	public GameObject dkde;
	public GameObject dkdo;
	public GameObject game;
	public GameObject inventory;

	public int bottomButton = 1;
	public int shopButton = 2;
	public int inventoryButton = 3;
	public int gameRulesButton = 4;
	public int mapButton = 5;

	public int buttonType;

	// Use this for initialization
	void Start()
	{

	}

	// Update is called once per frame
	void Update()
	{
		
	}

	public void WhenTagsExist(List<string> tags)
	{
		foreach (string tag in tags)
		{
			if (tag.StartsWith("loc:"))
			{
				var loc = tag.Substring(4).Trim();
				/*ResetLoc();*/
				switch (loc)
				{
					case "danaHouse":
						/*ResetLoc();*/
						danaHouse.SetActive(true);
						break;
					case "kimmyHouse":
						/*ResetLoc();*/
						kimmyHouse.SetActive(true);
						break;
					case "downtown":
						/*ResetLoc();*/
						downtown.SetActive(true);
						break;
					case "playground":
						/*ResetLoc();*/
						playground.SetActive(true);
						break;
					case "shop":
						/*ResetLoc();*/
						shop.SetActive(true);
						break;
					case "map":
						/*ResetLoc();*/
						break;
					case "clear":
						ResetLoc();
						break;
				}
			}

			if (tag.StartsWith("convo:"))
			{
				var convo = tag.Substring(6).Trim();
				ResetConvo();
				switch (convo)
				{
					case "d/k/dm":
						ShowConvo(dkdm);
						break;
					case "d/k/dm/km":
						ShowConvo(dkdmkm);
						break;
					case "d/k":
						ShowConvo(dk);
						break;
					case "d/k/de":
						ShowConvo(dkde);
						break;
					case "d/k/do":
						ShowConvo(dkdo);
						break;
					case "game":
						ShowConvo(game);
						break;
					case "inventory":
						ShowConvo(inventory);
						break;
					case "clear":
						ResetConvo();
						break;
				}
			}

			if (tag.StartsWith("but:"))
			{
				var button = tag.Substring(4).Trim();
				switch (button)
				{
					case "bottom":
						buttonType = bottomButton;
						break;
					case "shop":
						buttonType = shopButton;
						break;
					case "inventory":
						buttonType = inventoryButton;
						break;
					case "game":
						buttonType = gameRulesButton;
						break;
					case "map":
						buttonType = mapButton;
						break;
				}
				print(buttonType);
			}

			if (tag.StartsWith("bought:"))
			{
				var purchase = tag.Substring(7).Trim();
				switch (purchase)
				{
					case "dice":
						break;
					case "frisbee":
						break;
					case "ball":
						break;
					case "chalk":
						break;
					case "notepad":
						break;
					case "rope":
						break;
				}

				print(purchase);
			}
		}
	}

	private void ResetLoc()
	{
		danaHouse.SetActive(false);
		kimmyHouse.SetActive(false);
		downtown.SetActive(false);
		playground.SetActive(false);
		shop.SetActive(false);
	}

	private void ResetConvo()
	{
		dkdm.SetActive(false);
		dkdmkm.SetActive(false);
		dk.SetActive(false);
		dkde.SetActive(false);
		dkdo.SetActive(false);
		game.SetActive(false);
		inventory.SetActive(false);
	}

	private void ShowConvo(GameObject convo)
	{
		convo.SetActive(true);
	}
}
