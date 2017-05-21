.class Lcom/android/systemui/ali/DynamicTickerText$100000000;
.super Ljava/lang/Object;
.source "DynamicTickerText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ali/DynamicTickerText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/ali/DynamicTickerText;


# direct methods
.method constructor <init>(Lcom/android/systemui/ali/DynamicTickerText;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/ali/DynamicTickerText$100000000;->this$0:Lcom/android/systemui/ali/DynamicTickerText;

    return-void
.end method

.method static access$0(Lcom/android/systemui/ali/DynamicTickerText$100000000;)Lcom/android/systemui/ali/DynamicTickerText;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/ali/DynamicTickerText$100000000;->this$0:Lcom/android/systemui/ali/DynamicTickerText;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 18
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicTickerText$100000000;->this$0:Lcom/android/systemui/ali/DynamicTickerText;

    invoke-virtual {v2}, Lcom/android/systemui/ali/DynamicTickerText;->updateTickerColor()V

    .line 19
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicTickerText$100000000;->this$0:Lcom/android/systemui/ali/DynamicTickerText;

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicTickerText;->h:Landroid/os/Handler;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicTickerText$100000000;->this$0:Lcom/android/systemui/ali/DynamicTickerText;

    iget v4, v4, Lcom/android/systemui/ali/DynamicTickerText;->mUpdater:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method
