this.pov_autopsy_unhold2_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.pov_autopsy_unhold2_item";
		this.m.Name = "Frost Unhold Autopsy";
		this.m.Description = "Almost every part of this huge beast has value, from its skin to its bones; a skilled brother may attempt to extract useful items from this unhold corpse.";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/pov_autopsy_unhold2.png";
		this.m.Value = 300;
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];


		if (this.getIconLarge() != null)
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIcon()
				isLarge = true
			});
		}
		else
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIcon()
			});
		}

		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] strange meat."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] unhold bones.\n[color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] unhold heart.\n[color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] frost unhold fur.\n[color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] deformed valuables.\n[color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/pov_mutagen_shard_icon.png",
			text = " Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] unhold mutagen.\n[color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] chance."
		});

		return result;

	}





});