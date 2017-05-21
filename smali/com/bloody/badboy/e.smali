.class public final Lcom/bloody/badboy/e;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bloody/badboy/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "styleable"
.end annotation


# static fields
.field public static final MaterialRipple:[I

.field public static final MaterialRipple_ripple_alpha:I = 0x0

.field public static final MaterialRipple_ripple_centered:I = 0x5

.field public static final MaterialRipple_ripple_color:I = 0x4

.field public static final MaterialRipple_ripple_framerate:I = 0x1

.field public static final MaterialRipple_ripple_rippleDuration:I = 0x2

.field public static final MaterialRipple_ripple_ripplePadding:I = 0x7

.field public static final MaterialRipple_ripple_type:I = 0x6

.field public static final MaterialRipple_ripple_zoom:I = 0x8

.field public static final MaterialRipple_ripple_zoomDuration:I = 0x3

.field public static final MaterialRipple_ripple_zoomScale:I = 0x9


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/bloody/badboy/e;->MaterialRipple:[I

    return-void

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
