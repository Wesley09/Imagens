.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onUpdateStatusBarIconColor(II)Landroid/animation/Animator;
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move v5, v2

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$S1000001(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V

    .line 169
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$100000000;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postInvalidate()V

    .line 170
    const/4 v4, 0x0

    check-cast v4, Landroid/animation/Animator;

    move-object v0, v4

    return-object v0
.end method
