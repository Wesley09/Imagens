.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recent/RecentsPanelView;
    .param p2, "x1"    # Lcom/android/systemui/recent/RecentsPanelView$1;

    .prologue
    .line 1208
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1211
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1213
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1217
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1219
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/TaskDescription;

    .line 1220
    .local v2, "td":Lcom/android/systemui/recent/TaskDescription;
    iget v3, v2, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v3, v5}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1224
    .end local v1    # "i":I
    .end local v2    # "td":Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 1226
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->dismiss()V

    .line 1227
    return-void
.end method
