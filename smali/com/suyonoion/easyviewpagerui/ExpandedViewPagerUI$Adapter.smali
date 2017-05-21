.class Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ExpandedViewPagerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;


# direct methods
.method public constructor <init>(Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 62
    :goto_0
    return-object p1

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    invoke-virtual {v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "page_1"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 54
    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    invoke-virtual {v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "page_2"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI$Adapter;->this$0:Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;

    invoke-virtual {v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "page_3"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lzx/thslpr/utils/ResourcesUtil;->setResources(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/suyonoion/easyviewpagerui/ExpandedViewPagerUI;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
