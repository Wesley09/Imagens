.class Lcom/android/systemui/statusbar/phone/IconMerger$2;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconMerger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconMerger;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    # getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger$2;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 148
    return-void
.end method
