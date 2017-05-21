.class Lcom/android/systemui/TutorialAccessNotification$10;
.super Ljava/lang/Object;
.source "TutorialAccessNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/TutorialAccessNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/TutorialAccessNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/TutorialAccessNotification;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/systemui/TutorialAccessNotification$10;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/systemui/TutorialAccessNotification$10;->this$0:Lcom/android/systemui/TutorialAccessNotification;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 926
    return-void
.end method
