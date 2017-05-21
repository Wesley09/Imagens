.class Lcom/android/systemui/ali/DynamicSystemIcon$100000000;
.super Ljava/lang/Object;
.source "DynamicSystemIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ali/DynamicSystemIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/ali/DynamicSystemIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/ali/DynamicSystemIcon;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;->this$0:Lcom/android/systemui/ali/DynamicSystemIcon;

    return-void
.end method

.method static access$0(Lcom/android/systemui/ali/DynamicSystemIcon$100000000;)Lcom/android/systemui/ali/DynamicSystemIcon;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;->this$0:Lcom/android/systemui/ali/DynamicSystemIcon;

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
    .line 23
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;->this$0:Lcom/android/systemui/ali/DynamicSystemIcon;

    invoke-static {v2}, Lcom/android/systemui/ali/DynamicSystemIcon;->access$1000006(Lcom/android/systemui/ali/DynamicSystemIcon;)V

    .line 24
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;->this$0:Lcom/android/systemui/ali/DynamicSystemIcon;

    invoke-static {v2}, Lcom/android/systemui/ali/DynamicSystemIcon;->access$L1000004(Lcom/android/systemui/ali/DynamicSystemIcon;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/ali/DynamicSystemIcon$100000000;->this$0:Lcom/android/systemui/ali/DynamicSystemIcon;

    invoke-static {v4}, Lcom/android/systemui/ali/DynamicSystemIcon;->access$L1000001(Lcom/android/systemui/ali/DynamicSystemIcon;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method
