.class Lcom/android/settings/Profile$2;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Profile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Profile;


# direct methods
.method constructor <init>(Lcom/android/settings/Profile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/Profile$2;->this$0:Lcom/android/settings/Profile;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v4, p0, Lcom/android/settings/Profile$2;->this$0:Lcom/android/settings/Profile;

    iget-object v4, v4, Lcom/android/settings/Profile;->name:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 69
    .local v2, "profileName":Landroid/text/Editable;
    iget-object v4, p0, Lcom/android/settings/Profile$2;->this$0:Lcom/android/settings/Profile;

    iget-object v4, v4, Lcom/android/settings/Profile;->owner:Landroid/widget/TextView;

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.CHANGE_PROFILE_NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v4, "NAME"

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v4, p0, Lcom/android/settings/Profile$2;->this$0:Lcom/android/settings/Profile;

    invoke-virtual {v4, v1}, Lcom/android/settings/Profile;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    iget-object v4, p0, Lcom/android/settings/Profile$2;->this$0:Lcom/android/settings/Profile;

    const-string v5, "Profile"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/Profile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 75
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "profileName"

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method
