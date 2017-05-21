.class public Lzx/thslpr/systemui/ViewPagerPanel;
.super Landroid/widget/LinearLayout;
.source "ViewPagerPanel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    invoke-virtual {p0}, Lzx/thslpr/systemui/ViewPagerPanel;->setupViewPagerPanel()V

    .line 28
    return-void
.end method

.method setupViewPagerPanel()V
    .locals 5

    .prologue
    .line 32
    invoke-virtual {p0}, Lzx/thslpr/systemui/ViewPagerPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id_viewpager"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lzx/thslpr/systemui/ViewPagerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    .line 33
    .local v1, "expandedViewPagerUI":Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;
    invoke-virtual {p0}, Lzx/thslpr/systemui/ViewPagerPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id_indicator"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lzx/thslpr/systemui/ViewPagerPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    .line 34
    .local v0, "circlePageIndicator":Lcom/viewpagerindicator/CirclePageIndicator;
    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 35
    return-void
.end method
