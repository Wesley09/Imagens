.class Lcom/android/systemui/power/PowerUI$10;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showAbnormalChargingWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field final synthetic val$abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$finalMessageId:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object p2, p0, Lcom/android/systemui/power/PowerUI$10;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/power/PowerUI$10;->val$abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;

    iput p4, p0, Lcom/android/systemui/power/PowerUI$10;->val$finalMessageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 978
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$10;->val$v:Landroid/view/View;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$10;->val$abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 980
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0c017b

    iget v2, p0, Lcom/android/systemui/power/PowerUI$10;->val$finalMessageId:I

    if-eq v1, v2, :cond_0

    const v1, 0x7f0c017c

    iget v2, p0, Lcom/android/systemui/power/PowerUI$10;->val$finalMessageId:I

    if-ne v1, v2, :cond_2

    .line 981
    :cond_0
    const-string v1, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 985
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 987
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 983
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
