.class Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$5;
.super Ljava/lang/Object;
.source "DormantModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;I)V

    .line 269
    return-void
.end method
