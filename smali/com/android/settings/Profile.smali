.class public Lcom/android/settings/Profile;
.super Landroid/app/Activity;
.source "Profile.java"


# instance fields
.field done:Landroid/widget/Button;

.field imageUri:Ljava/lang/String;

.field imageView:Landroid/widget/ImageView;

.field name:Landroid/widget/EditText;

.field owner:Landroid/widget/TextView;

.field profName:Ljava/lang/String;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 86
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Profile;->uri:Landroid/net/Uri;

    .line 87
    iget-object v3, p0, Lcom/android/settings/Profile;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/Profile;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 88
    const-string v3, "Profile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/Profile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 89
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "profilePic"

    iget-object v4, p0, Lcom/android/settings/Profile;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.android.settings.CHANGE_PROFILE_PICTURE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v3, "URI"

    iget-object v4, p0, Lcom/android/settings/Profile;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settings/Profile;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v2, 0x7f040055

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->setContentView(I)V

    .line 30
    const v2, 0x7f090172

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, "photo":Landroid/widget/ImageView;
    const v2, 0x7f090173

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Profile;->owner:Landroid/widget/TextView;

    .line 32
    const v2, 0x7f090174

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/Profile;->name:Landroid/widget/EditText;

    .line 33
    const v2, 0x7f090175

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/Profile;->done:Landroid/widget/Button;

    .line 34
    const v2, 0x7f090176

    invoke-virtual {p0, v2}, Lcom/android/settings/Profile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/Profile;->imageView:Landroid/widget/ImageView;

    .line 37
    const-string v2, "Profile"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/Profile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "profileName"

    const-string v3, "null"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Profile;->profName:Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/android/settings/Profile;->profName:Ljava/lang/String;

    const-string v3, "null"

    if-ne v2, v3, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/settings/Profile;->owner:Landroid/widget/TextView;

    const-string v3, "Owner"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    const-string v2, "profilePic"

    const-string v3, "null"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Profile;->imageUri:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/android/settings/Profile;->imageUri:Ljava/lang/String;

    const-string v3, "null"

    if-ne v2, v3, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/settings/Profile;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f0202a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :goto_1
    new-instance v2, Lcom/android/settings/Profile$1;

    invoke-direct {v2, p0}, Lcom/android/settings/Profile$1;-><init>(Lcom/android/settings/Profile;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/android/settings/Profile;->done:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/Profile$2;

    invoke-direct {v3, p0}, Lcom/android/settings/Profile$2;-><init>(Lcom/android/settings/Profile;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/android/settings/Profile;->owner:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/Profile;->profName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/android/settings/Profile;->name:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/Profile;->profName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/settings/Profile;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/Profile;->imageUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1
.end method
