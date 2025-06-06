this.pov_autopsy_ghost2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.pov_autopsy_ghost2";
		this.m.Type = this.Const.Items.ItemType.Usable;
		this.m.PreviewCraftable = this.new("scripts/items/pov_autopsy_ghost2_item");
		this.m.Cost = 120;
		local ingredients = [
			{
				Script = "scripts/items/misc/pov_corpse_ghost2_item",
				Num = 1
			},
		];
		this.init(ingredients);
		local skills = [
			{
				Scripts = [
					"scripts/skills/perks/perk_legend_potion_brewer"
				]
			}
		];
		this.initSkills(skills);
	}

	function onCraft( _stash )
	{
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/misc/anatomist/pov_ghost_mutagen_item"));
			}
		if (this.Math.rand(1, 100) <= 40)
			{
				_stash.add(this.new("scripts/items/misc/legend_banshee_essence_item"));
			}
	}

});


