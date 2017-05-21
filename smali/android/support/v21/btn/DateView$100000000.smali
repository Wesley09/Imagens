.class Landroid/support/v21/btn/DateView$100000000;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Landroid/support/v21/btn/DateView;


# direct methods
.method constructor <init>(Landroid/support/v21/btn/DateView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/btn/DateView$100000000;->this$0:Landroid/support/v21/btn/DateView;

    return-void
.end method

.method static access$0(Landroid/support/v21/btn/DateView$100000000;)Landroid/support/v21/btn/DateView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/DateView$100000000;->this$0:Landroid/support/v21/btn/DateView;

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
    .line 23
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v6, Ljava/text/SimpleDateFormat;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v21/btn/DateView$100000000;->this$0:Landroid/support/v21/btn/DateView;

    iget-object v8, v8, Landroid/support/v21/btn/DateView;->mFormat:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 24
    move-object v6, v4

    const-string v7, "Mi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/DateView$100000000;->this$0:Landroid/support/v21/btn/DateView;

    move-object v7, v4

    const-string v8, "Minggu"

    const-string v9, "Ahad"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v21/btn/DateView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
