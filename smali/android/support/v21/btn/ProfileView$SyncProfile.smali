.class Landroid/support/v21/btn/ProfileView$SyncProfile;
.super Landroid/os/AsyncTask;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "SyncProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/ProfileView;


# direct methods
.method public constructor <init>(Landroid/support/v21/btn/ProfileView;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/AsyncTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/ProfileView$SyncProfile;)Landroid/support/v21/btn/ProfileView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v3}, Landroid/support/v21/btn/ProfileView;->getAvatarProfile()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/ProfileView$SyncProfile;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/v21/btn/ProfileView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v4}, Landroid/support/v21/btn/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v5}, Landroid/support/v21/btn/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "pussy_user"

    const-string v7, "drawable"

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/ProfileView$SyncProfile;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v8}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/support/v21/btn/ProfileView$SyncProfile;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
