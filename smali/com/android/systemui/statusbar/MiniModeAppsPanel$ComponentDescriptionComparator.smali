.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComponentDescriptionComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 462
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .local v0, "cd1":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    move-object v1, p2

    .line 463
    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 465
    .local v1, "cd2":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v7

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I

    move-result v2

    .line 466
    .local v2, "index1":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v7

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I

    move-result v3

    .line 468
    .local v3, "index2":I
    if-ne v2, v5, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v4

    .line 470
    :cond_1
    if-ne v3, v5, :cond_2

    move v4, v5

    .line 471
    goto :goto_0

    .line 473
    :cond_2
    if-ge v2, v3, :cond_3

    move v4, v5

    .line 474
    goto :goto_0

    .line 475
    :cond_3
    if-ne v2, v3, :cond_0

    .line 476
    const/4 v4, 0x0

    goto :goto_0
.end method
