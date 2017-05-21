.class Landroid/support/v21/btn/ProfileView$100000000;
.super Landroid/content/BroadcastReceiver;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/ProfileView;


# direct methods
.method constructor <init>(Landroid/support/v21/btn/ProfileView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/ProfileView$100000000;)Landroid/support/v21/btn/ProfileView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->getAvatarProfile()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 79
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v7}, Landroid/support/v21/btn/ProfileView;->getAvatarProfile()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/ProfileView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v6}, Landroid/support/v21/btn/ProfileView;->invalidate()V

    return-void

    .line 83
    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v7}, Landroid/support/v21/btn/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "pussy_user"

    const-string v9, "drawable"

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v21/btn/ProfileView$100000000;->this$0:Landroid/support/v21/btn/ProfileView;

    invoke-virtual {v10}, Landroid/support/v21/btn/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Landroid/support/v21/ScrollUtils;->getResId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/ProfileView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    goto :goto_0
.end method
