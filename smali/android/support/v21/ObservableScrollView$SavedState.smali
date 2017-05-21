.class Landroid/support/v21/ObservableScrollView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/ObservableScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x28
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/ObservableScrollView$SavedState$100000001;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v21/ObservableScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field prevScrollY:I

.field scrollY:I


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Landroid/support/v21/ObservableScrollView$SavedState$100000001;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v21/ObservableScrollView$SavedState$100000001;-><init>()V

    sput-object v2, Landroid/support/v21/ObservableScrollView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 298
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/support/v21/ObservableScrollView$SavedState;->prevScrollY:I

    .line 299
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/support/v21/ObservableScrollView$SavedState;->scrollY:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v21/ObservableScrollView$SavedState;->prevScrollY:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v21/ObservableScrollView$SavedState;->scrollY:I

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
