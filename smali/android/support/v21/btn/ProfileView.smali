.class public Landroid/support/v21/btn/ProfileView;
.super Landroid/support/v21/btn/CircleImageView;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/btn/ProfileView$100000000;
    }
.end annotation


# instance fields
.field br:Landroid/content/BroadcastReceiver;

.field mContactUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/v21/btn/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    move-object v4, v0

    new-instance v5, Landroid/support/v21/btn/ProfileView$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/v21/btn/ProfileView$100000000;-><init>(Landroid/support/v21/btn/ProfileView;)V

    iput-object v5, v4, Landroid/support/v21/btn/ProfileView;->br:Landroid/content/BroadcastReceiver;

    .line 91
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/ProfileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/ProfileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private animateCollapse(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    :try_start_0
    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    invoke-virtual {v8}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 39
    move-object v8, v1

    :try_start_1
    const-string v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    .line 40
    const-string v8, "android.app.StatusBarManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    .line 41
    move-object v8, v5

    const-string v9, "collapse"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v6, v8

    .line 42
    move-object v8, v6

    move-object v9, v4

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :goto_1
    goto :goto_0

    :catch_1
    move-exception v8

    move-object v4, v8

    goto :goto_1
.end method


# virtual methods
.method getAvatarProfile()Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    const/4 v6, 0x0

    check-cast v6, Landroid/database/Cursor;

    move-object v2, v6

    .line 98
    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v3, v6

    .line 100
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v2, v6

    .line 101
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 103
    move-object v6, v2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v7, v2

    move-object v8, v2

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 106
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object v7, v4

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 108
    :cond_0
    move-object v6, v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :cond_1
    :goto_0
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 108
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 111
    new-instance v6, Ljava/io/IOException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    .line 113
    move-object v6, v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 158
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Landroid/support/v21/btn/ProfileView;->getAvatarProfile()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 160
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/btn/ProfileView;->getAvatarProfile()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/ProfileView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    new-instance v4, Landroid/content/IntentFilter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 170
    move-object v4, v2

    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    move-object v4, v2

    const-string v5, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    move-object v4, v2

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    move-object v4, v2

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/ProfileView;->br:Landroid/content/BroadcastReceiver;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    return-void

    .line 164
    :cond_0
    move-object v4, v0

    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Landroid/support/v21/btn/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "pussy_user"

    const-string v7, "drawable"

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v21/btn/ProfileView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v21/btn/ProfileView;->animateCollapse(Landroid/content/Context;)V

    .line 26
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/ProfileView;->showProfile(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 182
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/ProfileView;->br:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v21/btn/ProfileView;->animateCollapse(Landroid/content/Context;)V

    .line 55
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/ProfileView;->showProfile(Z)V

    .line 56
    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method showProfile(Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v3, v6

    .line 123
    move-object v6, v3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v7, v3

    move-object v8, v3

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    .line 126
    move v6, v1

    if-eqz v6, :cond_0

    .line 128
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "android.intent.action.EDIT"

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    .line 132
    :cond_0
    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string v9, "android.intent.action.VIEW"

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_1

    .line 137
    :cond_1
    new-instance v6, Landroid/content/Intent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 138
    move-object v6, v4

    const-string v7, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 139
    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
