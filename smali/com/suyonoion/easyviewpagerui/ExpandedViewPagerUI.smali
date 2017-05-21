.class public Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;
.super Landroid/support/v4/view/ViewPager;
.source "ExpandedViewPagerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->setupViewPager()V

    .line 24
    return-void
.end method


# virtual methods
.method setupViewPager()V
    .locals 5

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id_viewpager"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    .line 29
    .local v1, "expandedViewPagerUI":Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;
    new-instance v0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;

    invoke-direct {v0, p0}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;-><init>(Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;)V

    .line 30
    .local v0, "adapter":Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;
    invoke-virtual {v1, v0}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 31
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->setOffscreenPageLimit(I)V

    .line 33
    return-void
.end method
