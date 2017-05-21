.class Lcom/android/systemui/TutorialExpandNotification$1;
.super Ljava/lang/Object;
.source "TutorialExpandNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialExpandNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialExpandNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialExpandNotification;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/systemui/TutorialExpandNotification$1;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/TutorialExpandNotification$1;->this$0:Lcom/android/systemui/TutorialExpandNotification;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 375
    return-void
.end method
