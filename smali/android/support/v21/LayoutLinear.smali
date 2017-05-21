.class public Landroid/support/v21/LayoutLinear;
.super Landroid/view/ViewGroup;
.source "LayoutLinear.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v21/LayoutLinear$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mBaselineChildTop:I

    move-object v3, v0

    const v4, 0x800033

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v21/LayoutLinear;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mBaselineChildTop:I

    move-object v9, v0

    const v10, 0x800033

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mGravity:I

    .line 182
    move-object v9, v1

    move-object v10, v2

    sget-object v11, Landroid/R$styleable;->LinearLayout:[I

    move v12, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v5, v9

    .line 185
    move-object v9, v5

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    move v6, v9

    .line 186
    move v9, v6

    const/4 v10, 0x0

    if-lt v9, v10, :cond_0

    .line 187
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->setOrientation(I)V

    .line 190
    :cond_0
    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    move v6, v9

    .line 191
    move v9, v6

    const/4 v10, 0x0

    if-lt v9, v10, :cond_1

    .line 192
    move-object v9, v0

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->setGravity(I)V

    .line 195
    :cond_1
    move-object v9, v5

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    move v7, v9

    .line 196
    move v9, v7

    if-nez v9, :cond_2

    .line 197
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->setBaselineAligned(Z)V

    .line 200
    :cond_2
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x4

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    .line 202
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x3

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    .line 205
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v9, Landroid/support/v21/LayoutLinear;->mUseLargestChild:Z

    .line 207
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    .line 209
    move-object v9, v0

    move-object v10, v5

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v9, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    .line 210
    move-object v9, v5

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$Landroid$view$View$254(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mBottom:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$264(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mLeft:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$273(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mPaddingBottom:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$274(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mPaddingLeft:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$275(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mPaddingRight:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$276(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mPaddingTop:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$282(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mRight:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$288(Landroid/support/v21/LayoutLinear;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/view/View;->mTop:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Sandroid$view$View$254(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mBottom:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$264(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mLeft:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$273(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mPaddingBottom:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$274(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mPaddingLeft:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$275(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mPaddingRight:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$276(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mPaddingTop:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$282(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mRight:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$288(Landroid/support/v21/LayoutLinear;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/view/View;->mTop:I

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1355
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getMeasuredHeight()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v4, v10

    .line 1357
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    :goto_0
    move v10, v5

    const/4 v11, 0x0

    if-ge v10, v11, :cond_0

    return-void

    .line 1358
    :cond_0
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 1359
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 1360
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v7, v10

    .line 1362
    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1365
    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v8, v10

    .line 1366
    move-object v10, v7

    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1369
    move-object v10, v0

    move-object v11, v6

    move v12, v2

    const/4 v13, 0x0

    move v14, v4

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/v21/LayoutLinear;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1370
    move-object v10, v7

    move v11, v8

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1357
    :cond_1
    move v10, v5

    const/4 v11, -0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    goto :goto_0
.end method

.method private forceUniformWidth(II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 937
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getMeasuredWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move v4, v10

    .line 939
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    :goto_0
    move v10, v5

    const/4 v11, 0x0

    if-ge v10, v11, :cond_0

    return-void

    .line 940
    :cond_0
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 941
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    .line 942
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v7, v10

    .line 944
    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 947
    move-object v10, v7

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v8, v10

    .line 948
    move-object v10, v7

    move-object v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 951
    move-object v10, v0

    move-object v11, v6

    move v12, v4

    const/4 v13, 0x0

    move v14, v2

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/support/v21/LayoutLinear;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 952
    move-object v10, v7

    move v11, v8

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 939
    :cond_1
    move v10, v5

    const/4 v11, -0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    goto :goto_0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 1674
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v4

    add-int/2addr v10, v11

    move v11, v3

    move v12, v5

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1776
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v21/LayoutLinear$LayoutParams;

    move v0, v3

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v10

    move v3, v10

    .line 357
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->isLayoutRtl()Z

    move-result v10

    move v4, v10

    .line 358
    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    :goto_0
    move v10, v5

    const/4 v11, 0x0

    if-ge v10, v11, :cond_1

    .line 375
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 376
    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v5, v10

    .line 377
    move-object v10, v5

    if-nez v10, :cond_5

    .line 379
    move v10, v4

    if-eqz v10, :cond_4

    .line 380
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getPaddingLeft()I

    move-result v10

    move v6, v10

    .line 392
    :goto_1
    move-object v10, v0

    move-object v11, v1

    move v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/support/v21/LayoutLinear;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void

    .line 359
    :cond_1
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v6, v10

    .line 361
    move-object v10, v6

    if-eqz v10, :cond_2

    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 362
    move-object v10, v0

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 363
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v7, v10

    .line 364
    move v10, v4

    if-eqz v10, :cond_3

    .line 366
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v8, v10

    .line 370
    :goto_2
    move-object v10, v0

    move-object v11, v1

    move v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/support/v21/LayoutLinear;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 358
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 368
    :cond_3
    move-object v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    sub-int/2addr v10, v11

    move v8, v10

    goto :goto_2

    .line 382
    :cond_4
    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getWidth()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v21/LayoutLinear;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    sub-int/2addr v10, v11

    move v6, v10

    goto :goto_1

    .line 385
    :cond_5
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v7, v10

    .line 386
    move v10, v4

    if-eqz v10, :cond_6

    .line 387
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    sub-int/2addr v10, v11

    move v6, v10

    goto :goto_1

    .line 389
    :cond_6
    move-object v10, v5

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    move-object v11, v7

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v11

    move v6, v10

    goto/16 :goto_1
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v9

    move v3, v9

    .line 330
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v4, v9

    :goto_0
    move v9, v4

    const/4 v10, 0x0

    if-ge v9, v10, :cond_1

    .line 342
    move-object v9, v0

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 343
    move-object v9, v0

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v4, v9

    .line 344
    const/4 v9, 0x0

    move v5, v9

    .line 345
    move-object v9, v4

    if-nez v9, :cond_3

    .line 346
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/LayoutLinear;->getHeight()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/v21/LayoutLinear;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    sub-int/2addr v9, v10

    move v5, v9

    .line 351
    :goto_1
    move-object v9, v0

    move-object v10, v1

    move v11, v5

    invoke-virtual {v9, v10, v11}, Landroid/support/v21/LayoutLinear;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void

    .line 331
    :cond_1
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 333
    move-object v9, v5

    if-eqz v9, :cond_2

    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 334
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 335
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v6, v9

    .line 336
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    move-object v10, v6

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    sub-int/2addr v9, v10

    move v7, v9

    .line 337
    move-object v9, v0

    move-object v10, v1

    move v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/support/v21/LayoutLinear;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 330
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 348
    :cond_3
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v6, v9

    .line 349
    move-object v9, v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    move-object v10, v6

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v5, v9

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/LayoutLinear;->getPaddingLeft()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    add-int/2addr v5, v6

    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/LayoutLinear;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    sub-int/2addr v7, v8

    move v8, v2

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 399
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/v21/LayoutLinear;->getPaddingTop()I

    move-result v6

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    add-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    add-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v21/LayoutLinear;->getHeight()I

    move-result v8

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v21/LayoutLinear;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 405
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v21/LayoutLinear$LayoutParams;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1759
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v3, 0x0

    if-ne v2, v3, :cond_0

    .line 1760
    new-instance v2, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v21/LayoutLinear$LayoutParams;-><init>(II)V

    move-object v0, v2

    .line 1764
    :goto_0
    return-object v0

    .line 1761
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1762
    new-instance v2, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/support/v21/LayoutLinear$LayoutParams;-><init>(II)V

    move-object v0, v2

    goto :goto_0

    .line 1764
    :cond_1
    const/4 v2, 0x0

    check-cast v2, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v0, v2

    goto :goto_0
.end method

.method protected bridge generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/LayoutLinear;->generateDefaultLayoutParams()Landroid/support/v21/LayoutLinear$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v21/LayoutLinear$LayoutParams;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1746
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/LayoutLinear;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Landroid/support/v21/LayoutLinear$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v3

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v21/LayoutLinear$LayoutParams;
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1769
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/v21/LayoutLinear$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v3

    return-object v0
.end method

.method public bridge generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v21/LayoutLinear$LayoutParams;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected bridge generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v21/LayoutLinear$LayoutParams;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getBaseline()I
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    const/4 v8, 0x0

    if-ge v7, v8, :cond_0

    .line 466
    move-object v7, v0

    invoke-super {v7}, Landroid/view/View;->getBaseline()I

    move-result v7

    move v0, v7

    .line 513
    :goto_0
    return v0

    .line 469
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    if-gt v7, v8, :cond_1

    .line 470
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "mBaselineAlignedChildIndex of LayoutLinear "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "set to an index that is out of bounds."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 474
    :cond_1
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    invoke-virtual {v7, v8}, Landroid/support/v21/LayoutLinear;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v2, v7

    .line 475
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v7

    move v3, v7

    .line 477
    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 478
    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    const/4 v8, 0x0

    if-ne v7, v8, :cond_2

    .line 480
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 484
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "mBaselineAlignedChildIndex of LayoutLinear "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "points to a View that doesn\'t know how to get its baseline."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 494
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mBaselineChildTop:I

    move v4, v7

    .line 496
    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 497
    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mGravity:I

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    move v5, v7

    .line 498
    move v7, v5

    const/16 v8, 0x30

    if-eq v7, v8, :cond_4

    .line 499
    move v7, v5

    sparse-switch v7, :sswitch_data_0

    .line 512
    :cond_4
    :goto_1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object v5, v7

    .line 513
    move v7, v4

    move-object v8, v5

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    move v8, v3

    add-int/2addr v7, v8

    move v0, v7

    goto/16 :goto_0

    .line 501
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroid/view/View;->mBottom:I

    move-object v8, v0

    iget v8, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    sub-int/2addr v7, v8

    move v4, v7

    .line 502
    goto :goto_1

    .line 505
    :sswitch_1
    move v7, v4

    move-object v8, v0

    iget v8, v8, Landroid/view/View;->mBottom:I

    move-object v9, v0

    iget v9, v9, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    sub-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move v4, v7

    .line 507
    goto :goto_1

    .line 499
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 3

    .prologue
    .line 522
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    move v0, v2

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 5

    .prologue
    .line 1385
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 247
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 3

    .prologue
    .line 303
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    move v0, v2

    return v0
.end method

.method public getDividerWidth()I
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    move v0, v2

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 1427
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 4

    .prologue
    .line 1439
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 1697
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mOrientation:I

    move v0, v2

    return v0
.end method

.method public getShowDividers()I
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    move v0, v2

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 550
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 3

    .prologue
    .line 563
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getWeightSum()F
    .locals 3

    .prologue
    .line 574
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    move v0, v2

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 8

    .prologue
    .line 611
    move-object v0, p0

    move v1, p1

    move v6, v1

    const/4 v7, 0x0

    if-ne v6, v7, :cond_1

    .line 612
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    :goto_0
    move v0, v6

    .line 625
    :goto_1
    return v0

    .line 612
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 613
    :cond_1
    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 614
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    const/4 v7, 0x4

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    :goto_2
    move v0, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 615
    :cond_3
    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    const/4 v7, 0x2

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    if-eq v6, v7, :cond_6

    .line 616
    const/4 v6, 0x0

    move v3, v6

    .line 617
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move v7, v1

    if-lt v6, v7, :cond_4

    .line 623
    :goto_4
    move v6, v3

    move v0, v6

    goto :goto_1

    .line 618
    :cond_4
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v21/LayoutLinear;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 619
    const/4 v6, 0x1

    move v3, v6

    .line 620
    goto :goto_4

    .line 617
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 625
    :cond_6
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public isBaselineAligned()Z
    .locals 3

    .prologue
    .line 415
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    move v0, v2

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 3

    .prologue
    .line 443
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v21/LayoutLinear;->mUseLargestChild:Z

    move v0, v2

    return v0
.end method

.method layoutHorizontal()V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1550
    move-object/from16 v2, p0

    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v21/LayoutLinear;->isLayoutRtl()Z

    move-result v30

    move/from16 v4, v30

    .line 1551
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v30, v0

    move/from16 v5, v30

    .line 1553
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v8, v30

    .line 1558
    move/from16 v30, v8

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v9, v30

    .line 1561
    move/from16 v30, v8

    move/from16 v31, v5

    sub-int v30, v30, v31

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v10, v30

    .line 1563
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v30

    move/from16 v11, v30

    .line 1565
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v30, v0

    const v31, 0x800007

    and-int v30, v30, v31

    move/from16 v12, v30

    .line 1566
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v30, v0

    const/16 v31, 0x70

    and-int/lit8 v30, v30, 0x70

    move/from16 v13, v30

    .line 1568
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    move/from16 v30, v0

    move/from16 v14, v30

    .line 1570
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxAscent:[I

    move-object/from16 v30, v0

    move-object/from16 v15, v30

    .line 1571
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxDescent:[I

    move-object/from16 v30, v0

    move-object/from16 v16, v30

    .line 1573
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Landroid/support/v21/LayoutLinear;->getLayoutDirection()I

    move-result v30

    move/from16 v17, v30

    .line 1574
    move/from16 v30, v12

    move/from16 v31, v17

    invoke-static/range {v30 .. v31}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v30

    sparse-switch v30, :sswitch_data_0

    .line 1587
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v7, v30

    .line 1591
    :goto_0
    const/16 v30, 0x0

    move/from16 v18, v30

    .line 1592
    const/16 v30, 0x1

    move/from16 v19, v30

    .line 1594
    move/from16 v30, v4

    if-eqz v30, :cond_0

    .line 1595
    move/from16 v30, v11

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v18, v30

    .line 1596
    const/16 v30, -0x1

    move/from16 v19, v30

    .line 1599
    :cond_0
    move/from16 v30, v11

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v20, v30

    :goto_1
    move/from16 v30, v20

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    return-void

    .line 1577
    :sswitch_0
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v7, v30

    .line 1578
    goto :goto_0

    .line 1582
    :sswitch_1
    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v31, v0

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    const/16 v32, 0x2

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    move/from16 v7, v30

    .line 1583
    goto :goto_0

    .line 1600
    :cond_1
    move/from16 v30, v18

    move/from16 v31, v19

    move/from16 v32, v20

    mul-int v31, v31, v32

    add-int v30, v30, v31

    move/from16 v21, v30

    .line 1601
    move-object/from16 v30, v2

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v22, v30

    .line 1603
    move-object/from16 v30, v22

    if-nez v30, :cond_3

    .line 1604
    move/from16 v30, v7

    move-object/from16 v31, v2

    move/from16 v32, v21

    invoke-virtual/range {v31 .. v32}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v31

    add-int v30, v30, v31

    move/from16 v7, v30

    .line 1599
    :cond_2
    :goto_2
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_1

    .line 1605
    :cond_3
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 1606
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move/from16 v23, v30

    .line 1607
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    move/from16 v24, v30

    .line 1608
    const/16 v30, -0x1

    move/from16 v25, v30

    .line 1610
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v26, v30

    .line 1613
    move/from16 v30, v14

    if-eqz v30, :cond_4

    move-object/from16 v30, v26

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    .line 1614
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getBaseline()I

    move-result v30

    move/from16 v25, v30

    .line 1617
    :cond_4
    move-object/from16 v30, v26

    move-object/from16 v0, v30

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v30, v0

    move/from16 v27, v30

    .line 1618
    move/from16 v30, v27

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_5

    .line 1619
    move/from16 v30, v13

    move/from16 v27, v30

    .line 1622
    :cond_5
    move/from16 v30, v27

    const/16 v31, 0x70

    and-int/lit8 v30, v30, 0x70

    sparse-switch v30, :sswitch_data_1

    .line 1654
    move/from16 v30, v5

    move/from16 v6, v30

    .line 1658
    :goto_3
    move-object/from16 v30, v2

    move/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1659
    move/from16 v30, v7

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v7, v30

    .line 1662
    :cond_6
    move/from16 v30, v7

    move-object/from16 v31, v26

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v7, v30

    .line 1663
    move-object/from16 v30, v2

    move-object/from16 v31, v22

    move/from16 v32, v7

    move-object/from16 v33, v2

    move-object/from16 v34, v22

    invoke-virtual/range {v33 .. v34}, Landroid/support/v21/LayoutLinear;->getLocationOffset(Landroid/view/View;)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v33, v6

    move/from16 v34, v23

    move/from16 v35, v24

    invoke-direct/range {v30 .. v35}, Landroid/support/v21/LayoutLinear;->setChildFrame(Landroid/view/View;IIII)V

    .line 1665
    move/from16 v30, v7

    move/from16 v31, v23

    move-object/from16 v32, v26

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v32, v2

    move-object/from16 v33, v22

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v32

    add-int v31, v31, v32

    add-int v30, v30, v31

    move/from16 v7, v30

    .line 1668
    move/from16 v30, v20

    move-object/from16 v31, v2

    move-object/from16 v32, v22

    move/from16 v33, v21

    invoke-virtual/range {v31 .. v33}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v31

    add-int v30, v30, v31

    move/from16 v20, v30

    goto/16 :goto_2

    .line 1624
    :sswitch_2
    move/from16 v30, v5

    move-object/from16 v31, v26

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v6, v30

    .line 1625
    move/from16 v30, v25

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1626
    move/from16 v30, v6

    move-object/from16 v31, v15

    const/16 v32, 0x1

    aget v31, v31, v32

    move/from16 v32, v25

    sub-int v31, v31, v32

    add-int v30, v30, v31

    move/from16 v6, v30

    .line 1628
    :cond_7
    goto/16 :goto_3

    .line 1642
    :sswitch_3
    move/from16 v30, v5

    move/from16 v31, v10

    move/from16 v32, v24

    sub-int v31, v31, v32

    const/16 v32, 0x2

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    move-object/from16 v31, v26

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v31, v26

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v6, v30

    .line 1644
    goto/16 :goto_3

    .line 1647
    :sswitch_4
    move/from16 v30, v9

    move/from16 v31, v24

    sub-int v30, v30, v31

    move-object/from16 v31, v26

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v6, v30

    .line 1648
    move/from16 v30, v25

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 1649
    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v30

    move/from16 v31, v25

    sub-int v30, v30, v31

    move/from16 v28, v30

    .line 1650
    move/from16 v30, v6

    move-object/from16 v31, v16

    const/16 v32, 0x2

    aget v31, v31, v32

    move/from16 v32, v28

    sub-int v31, v31, v32

    sub-int v30, v30, v31

    move/from16 v6, v30

    .line 1652
    :cond_8
    goto/16 :goto_3

    .line 1574
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1622
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1460
    move-object/from16 v2, p0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v4, v22

    .line 1462
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v7, v22

    .line 1467
    move/from16 v22, v7

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v8, v22

    .line 1470
    move/from16 v22, v7

    move/from16 v23, v4

    sub-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v9, v22

    .line 1472
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v22

    move/from16 v10, v22

    .line 1474
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v22, v0

    const/16 v23, 0x70

    and-int/lit8 v22, v22, 0x70

    move/from16 v11, v22

    .line 1475
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v22, v0

    const v23, 0x800007

    and-int v22, v22, v23

    move/from16 v12, v22

    .line 1477
    move/from16 v22, v11

    sparse-switch v22, :sswitch_data_0

    .line 1490
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v22, v0

    move/from16 v5, v22

    .line 1494
    :goto_0
    move/from16 v22, v10

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v13, v22

    :goto_1
    move/from16 v22, v13

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    return-void

    .line 1480
    :sswitch_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v5, v22

    .line 1481
    goto :goto_0

    .line 1485
    :sswitch_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1486
    goto :goto_0

    .line 1495
    :cond_0
    move-object/from16 v22, v2

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v14, v22

    .line 1496
    move-object/from16 v22, v14

    if-nez v22, :cond_2

    .line 1497
    move/from16 v22, v5

    move-object/from16 v23, v2

    move/from16 v24, v13

    invoke-virtual/range {v23 .. v24}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1494
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 1498
    :cond_2
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 1499
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move/from16 v15, v22

    .line 1500
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move/from16 v16, v22

    .line 1502
    move-object/from16 v22, v14

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v17, v22

    .line 1505
    move-object/from16 v22, v17

    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v22, v0

    move/from16 v18, v22

    .line 1506
    move/from16 v22, v18

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 1507
    move/from16 v22, v12

    move/from16 v18, v22

    .line 1509
    :cond_3
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroid/support/v21/LayoutLinear;->getLayoutDirection()I

    move-result v22

    move/from16 v19, v22

    .line 1510
    move/from16 v22, v18

    move/from16 v23, v19

    invoke-static/range {v22 .. v23}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v22

    move/from16 v20, v22

    .line 1511
    move/from16 v22, v20

    const/16 v23, 0x7

    and-int/lit8 v22, v22, 0x7

    sparse-switch v22, :sswitch_data_1

    .line 1523
    move/from16 v22, v4

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v6, v22

    .line 1527
    :goto_3
    move-object/from16 v22, v2

    move/from16 v23, v13

    invoke-virtual/range {v22 .. v23}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1528
    move/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1531
    :cond_4
    move/from16 v22, v5

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1532
    move-object/from16 v22, v2

    move-object/from16 v23, v14

    move/from16 v24, v6

    move/from16 v25, v5

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    invoke-virtual/range {v26 .. v27}, Landroid/support/v21/LayoutLinear;->getLocationOffset(Landroid/view/View;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v26, v15

    move/from16 v27, v16

    invoke-direct/range {v22 .. v27}, Landroid/support/v21/LayoutLinear;->setChildFrame(Landroid/view/View;IIII)V

    .line 1534
    move/from16 v22, v5

    move/from16 v23, v16

    move-object/from16 v24, v17

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v24, v2

    move-object/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v24

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v5, v22

    .line 1536
    move/from16 v22, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v14

    move/from16 v25, v13

    invoke-virtual/range {v23 .. v25}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v23

    add-int v22, v22, v23

    move/from16 v13, v22

    goto/16 :goto_2

    .line 1513
    :sswitch_2
    move/from16 v22, v4

    move/from16 v23, v9

    move/from16 v24, v15

    sub-int v23, v23, v24

    const/16 v24, 0x2

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v6, v22

    .line 1515
    goto/16 :goto_3

    .line 1518
    :sswitch_3
    move/from16 v22, v8

    move/from16 v23, v15

    sub-int v22, v22, v23

    move-object/from16 v23, v17

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v6, v22

    .line 1519
    goto/16 :goto_3

    .line 1477
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1511
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 1415
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    move-object v9, v1

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v8 .. v13}, Landroid/support/v21/LayoutLinear;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 58
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 970
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v37, v2

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 971
    const/16 v37, 0x0

    move/from16 v6, v37

    .line 972
    const/16 v37, 0x0

    move/from16 v7, v37

    .line 973
    const/16 v37, 0x0

    move/from16 v8, v37

    .line 974
    const/16 v37, 0x0

    move/from16 v9, v37

    .line 975
    const/16 v37, 0x1

    move/from16 v10, v37

    .line 976
    const/16 v37, 0x0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v11, v37

    .line 978
    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v37

    move/from16 v12, v37

    .line 980
    move/from16 v37, v3

    invoke-static/range {v37 .. v37}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v37

    move/from16 v13, v37

    .line 981
    move/from16 v37, v4

    invoke-static/range {v37 .. v37}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v37

    move/from16 v14, v37

    .line 983
    const/16 v37, 0x0

    move/from16 v15, v37

    .line 985
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxAscent:[I

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxDescent:[I

    move-object/from16 v37, v0

    if-nez v37, :cond_1

    .line 986
    :cond_0
    move-object/from16 v37, v2

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/support/v21/LayoutLinear;->mMaxAscent:[I

    .line 987
    move-object/from16 v37, v2

    const/16 v38, 0x4

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/support/v21/LayoutLinear;->mMaxDescent:[I

    .line 990
    :cond_1
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxAscent:[I

    move-object/from16 v37, v0

    move-object/from16 v16, v37

    .line 991
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/support/v21/LayoutLinear;->mMaxDescent:[I

    move-object/from16 v37, v0

    move-object/from16 v17, v37

    .line 993
    move-object/from16 v37, v16

    const/16 v38, 0x0

    move-object/from16 v39, v16

    const/16 v40, 0x1

    move-object/from16 v41, v16

    const/16 v42, 0x2

    move-object/from16 v43, v16

    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v55, v43

    move/from16 v56, v44

    move/from16 v57, v45

    move/from16 v43, v57

    move-object/from16 v44, v55

    move/from16 v45, v56

    move/from16 v46, v57

    aput v46, v44, v45

    move-object/from16 v55, v41

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v41, v57

    move-object/from16 v42, v55

    move/from16 v43, v56

    move/from16 v44, v57

    aput v44, v42, v43

    move-object/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v41

    move/from16 v39, v57

    move-object/from16 v40, v55

    move/from16 v41, v56

    move/from16 v42, v57

    aput v42, v40, v41

    aput v39, v37, v38

    .line 994
    move-object/from16 v37, v17

    const/16 v38, 0x0

    move-object/from16 v39, v17

    const/16 v40, 0x1

    move-object/from16 v41, v17

    const/16 v42, 0x2

    move-object/from16 v43, v17

    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v55, v43

    move/from16 v56, v44

    move/from16 v57, v45

    move/from16 v43, v57

    move-object/from16 v44, v55

    move/from16 v45, v56

    move/from16 v46, v57

    aput v46, v44, v45

    move-object/from16 v55, v41

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v41, v57

    move-object/from16 v42, v55

    move/from16 v43, v56

    move/from16 v44, v57

    aput v44, v42, v43

    move-object/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v41

    move/from16 v39, v57

    move-object/from16 v40, v55

    move/from16 v41, v56

    move/from16 v42, v57

    aput v42, v40, v41

    aput v39, v37, v38

    .line 996
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    move/from16 v37, v0

    move/from16 v18, v37

    .line 997
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-boolean v0, v0, Landroid/support/v21/LayoutLinear;->mUseLargestChild:Z

    move/from16 v37, v0

    move/from16 v19, v37

    .line 999
    move/from16 v37, v13

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_b

    const/16 v37, 0x0

    :goto_0
    move/from16 v20, v37

    .line 1001
    const/high16 v37, -0x80000000

    move/from16 v21, v37

    .line 1004
    move/from16 v37, v12

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v22, v37

    :goto_1
    move/from16 v37, v22

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    .line 1132
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_2

    move-object/from16 v37, v2

    move/from16 v38, v12

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 1133
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1138
    :cond_2
    move-object/from16 v37, v16

    const/16 v38, 0x1

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    move-object/from16 v37, v16

    const/16 v38, 0x2

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    move-object/from16 v37, v16

    const/16 v38, 0x3

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_4

    .line 1142
    :cond_3
    move-object/from16 v37, v16

    const/16 v38, 0x3

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x0

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x1

    aget v39, v39, v40

    move-object/from16 v40, v16

    const/16 v41, 0x2

    aget v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v22, v37

    .line 1145
    move-object/from16 v37, v17

    const/16 v38, 0x3

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x0

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x1

    aget v39, v39, v40

    move-object/from16 v40, v17

    const/16 v41, 0x2

    aget v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v23, v37

    .line 1148
    move/from16 v37, v6

    move/from16 v38, v22

    move/from16 v39, v23

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v6, v37

    .line 1151
    :cond_4
    move/from16 v37, v19

    if-eqz v37, :cond_6

    move/from16 v37, v13

    const/high16 v38, -0x80000000

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_5

    move/from16 v37, v13

    sget v38, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_6

    .line 1153
    :cond_5
    move-object/from16 v37, v2

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1155
    move/from16 v37, v12

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v22, v37

    :goto_2
    move/from16 v37, v22

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1f

    .line 1182
    :cond_6
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v40, v0

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1184
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v22, v37

    .line 1187
    move/from16 v37, v22

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v21/LayoutLinear;->getSuggestedMinimumWidth()I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v22, v37

    .line 1190
    move/from16 v37, v22

    move/from16 v38, v3

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v37

    move/from16 v23, v37

    .line 1191
    move/from16 v37, v23

    const v38, 0xffffff

    and-int v37, v37, v38

    move/from16 v22, v37

    .line 1195
    move/from16 v37, v22

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    sub-int v37, v37, v38

    move/from16 v24, v37

    .line 1196
    move/from16 v37, v24

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_33

    move/from16 v37, v11

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_33

    .line 1197
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    move/from16 v37, v0

    const/16 v38, 0x0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    move/from16 v37, v0

    :goto_3
    move/from16 v25, v37

    .line 1199
    move-object/from16 v37, v16

    const/16 v38, 0x0

    move-object/from16 v39, v16

    const/16 v40, 0x1

    move-object/from16 v41, v16

    const/16 v42, 0x2

    move-object/from16 v43, v16

    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v55, v43

    move/from16 v56, v44

    move/from16 v57, v45

    move/from16 v43, v57

    move-object/from16 v44, v55

    move/from16 v45, v56

    move/from16 v46, v57

    aput v46, v44, v45

    move-object/from16 v55, v41

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v41, v57

    move-object/from16 v42, v55

    move/from16 v43, v56

    move/from16 v44, v57

    aput v44, v42, v43

    move-object/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v41

    move/from16 v39, v57

    move-object/from16 v40, v55

    move/from16 v41, v56

    move/from16 v42, v57

    aput v42, v40, v41

    aput v39, v37, v38

    .line 1200
    move-object/from16 v37, v17

    const/16 v38, 0x0

    move-object/from16 v39, v17

    const/16 v40, 0x1

    move-object/from16 v41, v17

    const/16 v42, 0x2

    move-object/from16 v43, v17

    const/16 v44, 0x3

    const/16 v45, -0x1

    move-object/from16 v55, v43

    move/from16 v56, v44

    move/from16 v57, v45

    move/from16 v43, v57

    move-object/from16 v44, v55

    move/from16 v45, v56

    move/from16 v46, v57

    aput v46, v44, v45

    move-object/from16 v55, v41

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v41, v57

    move-object/from16 v42, v55

    move/from16 v43, v56

    move/from16 v44, v57

    aput v44, v42, v43

    move-object/from16 v55, v39

    move/from16 v56, v40

    move/from16 v57, v41

    move/from16 v39, v57

    move-object/from16 v40, v55

    move/from16 v41, v56

    move/from16 v42, v57

    aput v42, v40, v41

    aput v39, v37, v38

    .line 1201
    const/16 v37, -0x1

    move/from16 v6, v37

    .line 1203
    move-object/from16 v37, v2

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1205
    move/from16 v37, v12

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v26, v37

    :goto_4
    move/from16 v37, v26

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_24

    .line 1289
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v39, v0

    move-object/from16 v40, v2

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v40, v0

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1294
    move-object/from16 v37, v16

    const/16 v38, 0x1

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v37, v16

    const/16 v38, 0x0

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v37, v16

    const/16 v38, 0x2

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v37, v16

    const/16 v38, 0x3

    aget v37, v37, v38

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_8

    .line 1298
    :cond_7
    move-object/from16 v37, v16

    const/16 v38, 0x3

    aget v37, v37, v38

    move-object/from16 v38, v16

    const/16 v39, 0x0

    aget v38, v38, v39

    move-object/from16 v39, v16

    const/16 v40, 0x1

    aget v39, v39, v40

    move-object/from16 v40, v16

    const/16 v41, 0x2

    aget v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v26, v37

    .line 1301
    move-object/from16 v37, v17

    const/16 v38, 0x3

    aget v37, v37, v38

    move-object/from16 v38, v17

    const/16 v39, 0x0

    aget v38, v38, v39

    move-object/from16 v39, v17

    const/16 v40, 0x1

    aget v39, v39, v40

    move-object/from16 v40, v17

    const/16 v41, 0x2

    aget v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v27, v37

    .line 1304
    move/from16 v37, v6

    move/from16 v38, v26

    move/from16 v39, v27

    add-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v6, v37

    .line 1333
    :cond_8
    move/from16 v37, v10

    if-nez v37, :cond_9

    move/from16 v37, v14

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_9

    .line 1334
    move/from16 v37, v8

    move/from16 v6, v37

    .line 1337
    :cond_9
    move/from16 v37, v6

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v39, v0

    add-int v38, v38, v39

    add-int v37, v37, v38

    move/from16 v6, v37

    .line 1340
    move/from16 v37, v6

    move-object/from16 v38, v2

    invoke-virtual/range {v38 .. v38}, Landroid/support/v21/LayoutLinear;->getSuggestedMinimumHeight()I

    move-result v38

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v6, v37

    .line 1342
    move-object/from16 v37, v2

    move/from16 v38, v23

    move/from16 v39, v7

    const/high16 v40, -0x1000000

    and-int v39, v39, v40

    or-int v38, v38, v39

    move/from16 v39, v6

    move/from16 v40, v4

    move/from16 v41, v7

    const/16 v42, 0x10

    shl-int/lit8 v41, v41, 0x10

    invoke-static/range {v39 .. v41}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Landroid/support/v21/LayoutLinear;->setMeasuredDimension(II)V

    .line 1346
    move/from16 v37, v15

    if-eqz v37, :cond_a

    .line 1347
    move-object/from16 v37, v2

    move/from16 v38, v12

    move/from16 v39, v3

    invoke-direct/range {v37 .. v39}, Landroid/support/v21/LayoutLinear;->forceUniformHeight(II)V

    :cond_a
    return-void

    .line 999
    :cond_b
    const/16 v37, 0x1

    goto/16 :goto_0

    .line 1005
    :cond_c
    move-object/from16 v37, v2

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v23, v37

    .line 1007
    move-object/from16 v37, v23

    if-nez v37, :cond_d

    .line 1008
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move/from16 v40, v22

    invoke-virtual/range {v39 .. v40}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v39

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1004
    :goto_5
    move/from16 v37, v22

    const/16 v38, -0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v22, v37

    goto/16 :goto_1

    .line 1012
    :cond_d
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    .line 1013
    move/from16 v37, v22

    move-object/from16 v38, v2

    move-object/from16 v39, v23

    move/from16 v40, v22

    invoke-virtual/range {v38 .. v40}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v22, v37

    .line 1014
    goto :goto_5

    .line 1017
    :cond_e
    move-object/from16 v37, v2

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v37

    if-eqz v37, :cond_f

    .line 1018
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1021
    :cond_f
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v24, v37

    .line 1024
    move/from16 v37, v11

    move-object/from16 v38, v24

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v38, v0

    add-float v37, v37, v38

    move/from16 v11, v37

    .line 1026
    move/from16 v37, v13

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_15

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_15

    .line 1030
    move/from16 v37, v20

    if-eqz v37, :cond_14

    .line 1031
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v24

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v39, v0

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1043
    :goto_6
    move/from16 v37, v18

    if-eqz v37, :cond_10

    .line 1044
    const/16 v37, 0x0

    sget v38, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    invoke-static/range {v37 .. v38}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v37

    move/from16 v25, v37

    .line 1045
    move-object/from16 v37, v23

    move/from16 v38, v25

    move/from16 v39, v25

    invoke-virtual/range {v37 .. v39}, Landroid/view/View;->measure(II)V

    .line 1086
    :cond_10
    :goto_7
    const/16 v37, 0x0

    move/from16 v25, v37

    .line 1087
    move/from16 v37, v14

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    .line 1091
    const/16 v37, 0x1

    move/from16 v15, v37

    .line 1092
    const/16 v37, 0x1

    move/from16 v25, v37

    .line 1095
    :cond_11
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v38, v24

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v26, v37

    .line 1096
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredHeight()I

    move-result v37

    move/from16 v38, v26

    add-int v37, v37, v38

    move/from16 v27, v37

    .line 1097
    move/from16 v37, v7

    move-object/from16 v38, v23

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredState()I

    move-result v38

    invoke-static/range {v37 .. v38}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v37

    move/from16 v7, v37

    .line 1099
    move/from16 v37, v18

    if-eqz v37, :cond_12

    .line 1100
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getBaseline()I

    move-result v37

    move/from16 v28, v37

    .line 1101
    move/from16 v37, v28

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 1104
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_1a

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v37, v0

    :goto_8
    const/16 v38, 0x70

    and-int/lit8 v37, v37, 0x70

    move/from16 v29, v37

    .line 1106
    move/from16 v37, v29

    const/16 v38, 0x4

    shr-int/lit8 v37, v37, 0x4

    const/16 v38, -0x2

    and-int/lit8 v37, v37, -0x2

    const/16 v38, 0x1

    shr-int/lit8 v37, v37, 0x1

    move/from16 v30, v37

    .line 1109
    move-object/from16 v37, v16

    move/from16 v38, v30

    move-object/from16 v39, v16

    move/from16 v40, v30

    aget v39, v39, v40

    move/from16 v40, v28

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1110
    move-object/from16 v37, v17

    move/from16 v38, v30

    move-object/from16 v39, v17

    move/from16 v40, v30

    aget v39, v39, v40

    move/from16 v40, v27

    move/from16 v41, v28

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1114
    :cond_12
    move/from16 v37, v6

    move/from16 v38, v27

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v6, v37

    .line 1116
    move/from16 v37, v10

    if-eqz v37, :cond_13

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1b

    :cond_13
    const/16 v37, 0x0

    :goto_9
    move/from16 v10, v37

    .line 1117
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_1d

    .line 1122
    move/from16 v37, v9

    move/from16 v38, v25

    if-eqz v38, :cond_1c

    move/from16 v38, v26

    :goto_a
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v9, v37

    .line 1129
    :goto_b
    move/from16 v37, v22

    move-object/from16 v38, v2

    move-object/from16 v39, v23

    move/from16 v40, v22

    invoke-virtual/range {v38 .. v40}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v22, v37

    goto/16 :goto_5

    .line 1033
    :cond_14
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v25, v37

    .line 1034
    move-object/from16 v37, v2

    move/from16 v38, v25

    move/from16 v39, v25

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto/16 :goto_6

    .line 1048
    :cond_15
    const/high16 v37, -0x80000000

    move/from16 v25, v37

    .line 1050
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_16

    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_16

    .line 1055
    const/16 v37, 0x0

    move/from16 v25, v37

    .line 1056
    move-object/from16 v37, v24

    const/16 v38, -0x2

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1063
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v38, v23

    move/from16 v39, v22

    move/from16 v40, v3

    move/from16 v41, v11

    const/16 v42, 0x0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    cmpg-float v41, v41, v42

    if-nez v41, :cond_18

    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v41, v0

    :goto_c
    move/from16 v42, v4

    const/16 v43, 0x0

    invoke-virtual/range {v37 .. v43}, Landroid/support/v21/LayoutLinear;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1067
    move/from16 v37, v25

    const/high16 v38, -0x80000000

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_17

    .line 1068
    move-object/from16 v37, v24

    move/from16 v38, v25

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1071
    :cond_17
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredWidth()I

    move-result v37

    move/from16 v26, v37

    .line 1072
    move/from16 v37, v20

    if-eqz v37, :cond_19

    .line 1073
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move/from16 v39, v26

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v23

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1081
    :goto_d
    move/from16 v37, v19

    if-eqz v37, :cond_10

    .line 1082
    move/from16 v37, v26

    move/from16 v38, v21

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v21, v37

    goto/16 :goto_7

    .line 1063
    :cond_18
    const/16 v41, 0x0

    goto :goto_c

    .line 1076
    :cond_19
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v27, v37

    .line 1077
    move-object/from16 v37, v2

    move/from16 v38, v27

    move/from16 v39, v27

    move/from16 v40, v26

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v23

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto :goto_d

    .line 1104
    :cond_1a
    move-object/from16 v37, v24

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v37, v0

    goto/16 :goto_8

    .line 1116
    :cond_1b
    const/16 v37, 0x1

    goto/16 :goto_9

    .line 1122
    :cond_1c
    move/from16 v38, v27

    goto/16 :goto_a

    .line 1125
    :cond_1d
    move/from16 v37, v8

    move/from16 v38, v25

    if-eqz v38, :cond_1e

    move/from16 v38, v26

    :goto_e
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v8, v37

    goto/16 :goto_b

    :cond_1e
    move/from16 v38, v27

    goto :goto_e

    .line 1156
    :cond_1f
    move-object/from16 v37, v2

    move/from16 v38, v22

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v23, v37

    .line 1158
    move-object/from16 v37, v23

    if-nez v37, :cond_20

    .line 1159
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move/from16 v40, v22

    invoke-virtual/range {v39 .. v40}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v39

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1155
    :goto_f
    move/from16 v37, v22

    const/16 v38, -0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v22, v37

    goto/16 :goto_2

    .line 1163
    :cond_20
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_21

    .line 1164
    move/from16 v37, v22

    move-object/from16 v38, v2

    move-object/from16 v39, v23

    move/from16 v40, v22

    invoke-virtual/range {v38 .. v40}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v22, v37

    .line 1165
    goto :goto_f

    .line 1168
    :cond_21
    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v24, v37

    .line 1170
    move/from16 v37, v20

    if-eqz v37, :cond_22

    .line 1171
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move/from16 v39, v21

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v23

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto :goto_f

    .line 1174
    :cond_22
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v25, v37

    .line 1175
    move-object/from16 v37, v2

    move/from16 v38, v25

    move/from16 v39, v25

    move/from16 v40, v21

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v24

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v23

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto/16 :goto_f

    .line 1197
    :cond_23
    move/from16 v37, v11

    goto/16 :goto_3

    .line 1206
    :cond_24
    move-object/from16 v37, v2

    move/from16 v38, v26

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v27, v37

    .line 1208
    move-object/from16 v37, v27

    if-eqz v37, :cond_25

    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_26

    .line 1205
    :cond_25
    :goto_10
    move/from16 v37, v26

    const/16 v38, -0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v26, v37

    goto/16 :goto_4

    .line 1212
    :cond_26
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v28, v37

    .line 1215
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v37, v0

    move/from16 v29, v37

    .line 1216
    move/from16 v37, v29

    const/16 v38, 0x0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_29

    .line 1218
    move/from16 v37, v29

    move/from16 v38, v24

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    move/from16 v38, v25

    div-float v37, v37, v38

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v30, v37

    .line 1219
    move/from16 v37, v25

    move/from16 v38, v29

    sub-float v37, v37, v38

    move/from16 v25, v37

    .line 1220
    move/from16 v37, v24

    move/from16 v38, v30

    sub-int v37, v37, v38

    move/from16 v24, v37

    .line 1222
    move/from16 v37, v4

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v38, v0

    move-object/from16 v39, v2

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move-object/from16 v39, v28

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v39, v0

    invoke-static/range {v37 .. v39}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v37

    move/from16 v31, v37

    .line 1229
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_27

    move/from16 v37, v13

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2c

    .line 1232
    :cond_27
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredWidth()I

    move-result v37

    move/from16 v38, v30

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1233
    move/from16 v37, v32

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_28

    .line 1234
    const/16 v37, 0x0

    move/from16 v32, v37

    .line 1237
    :cond_28
    move-object/from16 v37, v27

    move/from16 v38, v32

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v39, v31

    invoke-virtual/range {v37 .. v39}, Landroid/view/View;->measure(II)V

    .line 1248
    :goto_11
    move/from16 v37, v7

    move-object/from16 v38, v27

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getMeasuredState()I

    move-result v38

    const/high16 v39, -0x1000000

    and-int v38, v38, v39

    invoke-static/range {v37 .. v38}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v37

    move/from16 v7, v37

    .line 1252
    :cond_29
    move/from16 v37, v20

    if-eqz v37, :cond_2e

    .line 1253
    move-object/from16 v37, v2

    move-object/from16 v55, v37

    move-object/from16 v37, v55

    move-object/from16 v38, v55

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    move-object/from16 v39, v27

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredWidth()I

    move-result v39

    move-object/from16 v40, v28

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v28

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v27

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    add-int v38, v38, v39

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 1261
    :goto_12
    move/from16 v37, v14

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2a

    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_2f

    :cond_2a
    const/16 v37, 0x0

    :goto_13
    move/from16 v30, v37

    .line 1264
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v37, v0

    move-object/from16 v38, v28

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move/from16 v31, v37

    .line 1265
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getMeasuredHeight()I

    move-result v37

    move/from16 v38, v31

    add-int v37, v37, v38

    move/from16 v32, v37

    .line 1266
    move/from16 v37, v6

    move/from16 v38, v32

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v6, v37

    .line 1267
    move/from16 v37, v8

    move/from16 v38, v30

    if-eqz v38, :cond_30

    move/from16 v38, v31

    :goto_14
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v8, v37

    .line 1270
    move/from16 v37, v10

    if-eqz v37, :cond_2b

    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_31

    :cond_2b
    const/16 v37, 0x0

    :goto_15
    move/from16 v10, v37

    .line 1272
    move/from16 v37, v18

    if-eqz v37, :cond_25

    .line 1273
    move-object/from16 v37, v27

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getBaseline()I

    move-result v37

    move/from16 v33, v37

    .line 1274
    move/from16 v37, v33

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_25

    .line 1276
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_32

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mGravity:I

    move/from16 v37, v0

    :goto_16
    const/16 v38, 0x70

    and-int/lit8 v37, v37, 0x70

    move/from16 v34, v37

    .line 1278
    move/from16 v37, v34

    const/16 v38, 0x4

    shr-int/lit8 v37, v37, 0x4

    const/16 v38, -0x2

    and-int/lit8 v37, v37, -0x2

    const/16 v38, 0x1

    shr-int/lit8 v37, v37, 0x1

    move/from16 v35, v37

    .line 1281
    move-object/from16 v37, v16

    move/from16 v38, v35

    move-object/from16 v39, v16

    move/from16 v40, v35

    aget v39, v39, v40

    move/from16 v40, v33

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    .line 1282
    move-object/from16 v37, v17

    move/from16 v38, v35

    move-object/from16 v39, v17

    move/from16 v40, v35

    aget v39, v39, v40

    move/from16 v40, v32

    move/from16 v41, v33

    sub-int v40, v40, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v39

    aput v39, v37, v38

    goto/16 :goto_10

    .line 1242
    :cond_2c
    move-object/from16 v37, v27

    move/from16 v38, v30

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_2d

    move/from16 v38, v30

    :goto_17
    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v39, v31

    invoke-virtual/range {v37 .. v39}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    :cond_2d
    const/16 v38, 0x0

    goto :goto_17

    .line 1256
    :cond_2e
    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v37, v0

    move/from16 v30, v37

    .line 1257
    move-object/from16 v37, v2

    move/from16 v38, v30

    move/from16 v39, v30

    move-object/from16 v40, v27

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredWidth()I

    move-result v40

    add-int v39, v39, v40

    move-object/from16 v40, v28

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v28

    move-object/from16 v0, v40

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v40, v0

    add-int v39, v39, v40

    move-object/from16 v40, v2

    move-object/from16 v41, v27

    invoke-virtual/range {v40 .. v41}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v40

    add-int v39, v39, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto/16 :goto_12

    .line 1261
    :cond_2f
    const/16 v37, 0x1

    goto/16 :goto_13

    .line 1267
    :cond_30
    move/from16 v38, v32

    goto/16 :goto_14

    .line 1270
    :cond_31
    const/16 v37, 0x1

    goto/16 :goto_15

    .line 1276
    :cond_32
    move-object/from16 v37, v28

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->gravity:I

    move/from16 v37, v0

    goto/16 :goto_16

    .line 1307
    :cond_33
    move/from16 v37, v8

    move/from16 v38, v9

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v8, v37

    .line 1311
    move/from16 v37, v19

    if-eqz v37, :cond_8

    move/from16 v37, v13

    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_8

    .line 1312
    move/from16 v37, v12

    const/16 v38, 0x1

    add-int/lit8 v37, v37, -0x1

    move/from16 v25, v37

    :goto_18
    move/from16 v37, v25

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_8

    .line 1313
    move-object/from16 v37, v2

    move/from16 v38, v25

    invoke-virtual/range {v37 .. v38}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v37

    move-object/from16 v26, v37

    .line 1315
    move-object/from16 v37, v26

    if-eqz v37, :cond_34

    move-object/from16 v37, v26

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getVisibility()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_35

    .line 1312
    :cond_34
    :goto_19
    add-int/lit8 v25, v25, -0x1

    goto :goto_18

    .line 1319
    :cond_35
    move-object/from16 v37, v26

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v37

    check-cast v37, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v27, v37

    .line 1322
    move-object/from16 v37, v27

    move-object/from16 v0, v37

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v37, v0

    move/from16 v28, v37

    .line 1323
    move/from16 v37, v28

    const/16 v38, 0x0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    cmpl-float v37, v37, v38

    if-lez v37, :cond_34

    .line 1324
    move-object/from16 v37, v26

    move/from16 v38, v21

    const/high16 v39, 0x40000000    # 2.0f

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move-object/from16 v39, v26

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    const/high16 v40, 0x40000000    # 2.0f

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    invoke-virtual/range {v37 .. v39}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 4

    .prologue
    .line 1396
    move-object v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method measureVertical(II)V
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 641
    const/16 v32, 0x0

    move/from16 v6, v32

    .line 642
    const/16 v32, 0x0

    move/from16 v7, v32

    .line 643
    const/16 v32, 0x0

    move/from16 v8, v32

    .line 644
    const/16 v32, 0x0

    move/from16 v9, v32

    .line 645
    const/16 v32, 0x1

    move/from16 v10, v32

    .line 646
    const/16 v32, 0x0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v11, v32

    .line 648
    move-object/from16 v32, v2

    invoke-virtual/range {v32 .. v32}, Landroid/support/v21/LayoutLinear;->getVirtualChildCount()I

    move-result v32

    move/from16 v12, v32

    .line 650
    move/from16 v32, v3

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    move/from16 v13, v32

    .line 651
    move/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    move/from16 v14, v32

    .line 653
    const/16 v32, 0x0

    move/from16 v15, v32

    .line 655
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    move/from16 v32, v0

    move/from16 v16, v32

    .line 656
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v21/LayoutLinear;->mUseLargestChild:Z

    move/from16 v32, v0

    move/from16 v17, v32

    .line 658
    const/high16 v32, -0x80000000

    move/from16 v18, v32

    .line 661
    const/16 v32, 0x0

    move/from16 v19, v32

    :goto_0
    move/from16 v32, v19

    move/from16 v33, v12

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 773
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    move-object/from16 v32, v2

    move/from16 v33, v12

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 774
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 777
    :cond_0
    move/from16 v32, v17

    if-eqz v32, :cond_2

    move/from16 v32, v14

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_1

    move/from16 v32, v14

    sget v33, Landroid/view/View$MeasureSpec;->UNSPECIFIED:I

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 779
    :cond_1
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 781
    move/from16 v32, v12

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v19, v32

    :goto_1
    move/from16 v32, v19

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 804
    :cond_2
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v35, v0

    add-int v34, v34, v35

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 806
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v19, v32

    .line 809
    move/from16 v32, v19

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v21/LayoutLinear;->getSuggestedMinimumHeight()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v19, v32

    .line 812
    move/from16 v32, v19

    move/from16 v33, v4

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v32

    move/from16 v20, v32

    .line 813
    move/from16 v32, v20

    const v33, 0xffffff

    and-int v32, v32, v33

    move/from16 v19, v32

    .line 817
    move/from16 v32, v19

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v21, v32

    .line 818
    move/from16 v32, v21

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_27

    move/from16 v32, v11

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_27

    .line 819
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    move/from16 v32, v0

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_1a

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    move/from16 v32, v0

    :goto_2
    move/from16 v22, v32

    .line 821
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 823
    move/from16 v32, v12

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v23, v32

    :goto_3
    move/from16 v32, v23

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1b

    .line 886
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v34, v0

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v35, v0

    add-int v34, v34, v35

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 918
    :cond_3
    move/from16 v32, v10

    if-nez v32, :cond_4

    move/from16 v32, v13

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 919
    move/from16 v32, v8

    move/from16 v6, v32

    .line 922
    :cond_4
    move/from16 v32, v6

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v34, v0

    add-int v33, v33, v34

    add-int v32, v32, v33

    move/from16 v6, v32

    .line 925
    move/from16 v32, v6

    move-object/from16 v33, v2

    invoke-virtual/range {v33 .. v33}, Landroid/support/v21/LayoutLinear;->getSuggestedMinimumWidth()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v6, v32

    .line 927
    move-object/from16 v32, v2

    move/from16 v33, v6

    move/from16 v34, v3

    move/from16 v35, v7

    invoke-static/range {v33 .. v35}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v33

    move/from16 v34, v20

    invoke-virtual/range {v32 .. v34}, Landroid/support/v21/LayoutLinear;->setMeasuredDimension(II)V

    .line 930
    move/from16 v32, v15

    if-eqz v32, :cond_5

    .line 931
    move-object/from16 v32, v2

    move/from16 v33, v12

    move/from16 v34, v4

    invoke-direct/range {v32 .. v34}, Landroid/support/v21/LayoutLinear;->forceUniformWidth(II)V

    :cond_5
    return-void

    .line 662
    :cond_6
    move-object/from16 v32, v2

    move/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v20, v32

    .line 664
    move-object/from16 v32, v20

    if-nez v32, :cond_7

    .line 665
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v34

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 661
    :goto_4
    move/from16 v32, v19

    const/16 v33, 0x1

    add-int/lit8 v32, v32, 0x1

    move/from16 v19, v32

    goto/16 :goto_0

    .line 669
    :cond_7
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 670
    move/from16 v32, v19

    move-object/from16 v33, v2

    move-object/from16 v34, v20

    move/from16 v35, v19

    invoke-virtual/range {v33 .. v35}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v19, v32

    .line 671
    goto :goto_4

    .line 674
    :cond_8
    move-object/from16 v32, v2

    move/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 675
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 678
    :cond_9
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v21, v32

    .line 680
    move/from16 v32, v11

    move-object/from16 v33, v21

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v11, v32

    .line 682
    move/from16 v32, v14

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_c

    .line 686
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v22, v32

    .line 687
    move-object/from16 v32, v2

    move/from16 v33, v22

    move/from16 v34, v22

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 728
    :cond_a
    :goto_5
    move/from16 v32, v16

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    move/from16 v32, v16

    move/from16 v33, v19

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 729
    move-object/from16 v32, v2

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mBaselineChildTop:I

    .line 735
    :cond_b
    move/from16 v32, v19

    move/from16 v33, v16

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_10

    .line 736
    new-instance v32, Ljava/lang/RuntimeException;

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    new-instance v34, Ljava/lang/StringBuffer;

    move-object/from16 v46, v34

    move-object/from16 v34, v46

    move-object/from16 v35, v46

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v46, v35

    move-object/from16 v35, v46

    move-object/from16 v36, v46

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v46, v36

    move-object/from16 v36, v46

    move-object/from16 v37, v46

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    const-string v37, "A child of LayoutLinear with index "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    const-string v37, "less than mBaselineAlignedChildIndex has weight > 0, which "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    const-string v36, "won\'t work.  Either remove the weight, or don\'t set "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    const-string v35, "mBaselineAlignedChildIndex."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 689
    :cond_c
    const/high16 v32, -0x80000000

    move/from16 v22, v32

    .line 691
    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_d

    .line 696
    const/16 v32, 0x0

    move/from16 v22, v32

    .line 697
    move-object/from16 v32, v21

    const/16 v33, -0x2

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    :cond_d
    const/16 v32, 0x0

    move/from16 v23, v32

    .line 705
    move/from16 v32, v23

    move/from16 v33, v19

    sub-int v32, v32, v33

    move/from16 v23, v32

    .line 706
    move-object/from16 v32, v2

    move-object/from16 v33, v20

    move/from16 v34, v23

    move/from16 v35, v3

    const/16 v36, 0x0

    move/from16 v37, v4

    move/from16 v38, v11

    const/16 v39, 0x0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    cmpg-float v38, v38, v39

    if-nez v38, :cond_f

    move-object/from16 v38, v2

    move-object/from16 v0, v38

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v38, v0

    :goto_6
    invoke-virtual/range {v32 .. v38}, Landroid/support/v21/LayoutLinear;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 710
    move/from16 v32, v22

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    .line 711
    move-object/from16 v32, v21

    move/from16 v33, v22

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 714
    :cond_e
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v24, v32

    .line 715
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v25, v32

    .line 716
    move-object/from16 v32, v2

    move/from16 v33, v25

    move/from16 v34, v25

    move/from16 v35, v24

    add-int v34, v34, v35

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v36, v20

    invoke-virtual/range {v35 .. v36}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 719
    move/from16 v32, v17

    if-eqz v32, :cond_a

    .line 720
    move/from16 v32, v24

    move/from16 v33, v18

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v18, v32

    goto/16 :goto_5

    .line 706
    :cond_f
    const/16 v38, 0x0

    goto :goto_6

    .line 742
    :cond_10
    const/16 v32, 0x0

    move/from16 v22, v32

    .line 743
    move/from16 v32, v13

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_11

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 748
    const/16 v32, 0x1

    move/from16 v15, v32

    .line 749
    const/16 v32, 0x1

    move/from16 v22, v32

    .line 752
    :cond_11
    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v32, v0

    move-object/from16 v33, v21

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v23, v32

    .line 753
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move/from16 v33, v23

    add-int v32, v32, v33

    move/from16 v24, v32

    .line 754
    move/from16 v32, v6

    move/from16 v33, v24

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v6, v32

    .line 755
    move/from16 v32, v7

    move-object/from16 v33, v20

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredState()I

    move-result v33

    invoke-static/range {v32 .. v33}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v32

    move/from16 v7, v32

    .line 757
    move/from16 v32, v10

    if-eqz v32, :cond_12

    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    :cond_12
    const/16 v32, 0x0

    :goto_7
    move/from16 v10, v32

    .line 758
    move-object/from16 v32, v21

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_15

    .line 763
    move/from16 v32, v9

    move/from16 v33, v22

    if-eqz v33, :cond_14

    move/from16 v33, v23

    :goto_8
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v9, v32

    .line 770
    :goto_9
    move/from16 v32, v19

    move-object/from16 v33, v2

    move-object/from16 v34, v20

    move/from16 v35, v19

    invoke-virtual/range {v33 .. v35}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v19, v32

    goto/16 :goto_4

    .line 757
    :cond_13
    const/16 v32, 0x1

    goto :goto_7

    .line 763
    :cond_14
    move/from16 v33, v24

    goto :goto_8

    .line 766
    :cond_15
    move/from16 v32, v8

    move/from16 v33, v22

    if-eqz v33, :cond_16

    move/from16 v33, v23

    :goto_a
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v8, v32

    goto :goto_9

    :cond_16
    move/from16 v33, v24

    goto :goto_a

    .line 782
    :cond_17
    move-object/from16 v32, v2

    move/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v20, v32

    .line 784
    move-object/from16 v32, v20

    if-nez v32, :cond_18

    .line 785
    move-object/from16 v32, v2

    move-object/from16 v46, v32

    move-object/from16 v32, v46

    move-object/from16 v33, v46

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Landroid/support/v21/LayoutLinear;->measureNullChild(I)I

    move-result v34

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    .line 781
    :goto_b
    move/from16 v32, v19

    const/16 v33, -0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v19, v32

    goto/16 :goto_1

    .line 789
    :cond_18
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_19

    .line 790
    move/from16 v32, v19

    move-object/from16 v33, v2

    move-object/from16 v34, v20

    move/from16 v35, v19

    invoke-virtual/range {v33 .. v35}, Landroid/support/v21/LayoutLinear;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v19, v32

    .line 791
    goto :goto_b

    .line 794
    :cond_19
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v21, v32

    .line 797
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v22, v32

    .line 798
    move-object/from16 v32, v2

    move/from16 v33, v22

    move/from16 v34, v22

    move/from16 v35, v18

    add-int v34, v34, v35

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v21

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v36, v20

    invoke-virtual/range {v35 .. v36}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto :goto_b

    .line 819
    :cond_1a
    move/from16 v32, v11

    goto/16 :goto_2

    .line 824
    :cond_1b
    move-object/from16 v32, v2

    move/from16 v33, v23

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v24, v32

    .line 826
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1c

    .line 823
    :goto_c
    move/from16 v32, v23

    const/16 v33, -0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v23, v32

    goto/16 :goto_3

    .line 830
    :cond_1c
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v25, v32

    .line 832
    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    move/from16 v26, v32

    .line 833
    move/from16 v32, v26

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_1f

    .line 835
    move/from16 v32, v26

    move/from16 v33, v21

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v32, v32, v33

    move/from16 v33, v22

    div-float v32, v32, v33

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v27, v32

    .line 836
    move/from16 v32, v22

    move/from16 v33, v26

    sub-float v32, v32, v33

    move/from16 v22, v32

    .line 837
    move/from16 v32, v21

    move/from16 v33, v27

    sub-int v32, v32, v33

    move/from16 v21, v32

    .line 839
    move/from16 v32, v3

    move-object/from16 v33, v2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v33, v0

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v34, v25

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v34, v0

    invoke-static/range {v32 .. v34}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v32

    move/from16 v28, v32

    .line 845
    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d

    move/from16 v32, v14

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_22

    .line 848
    :cond_1d
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v32

    move/from16 v33, v27

    add-int v32, v32, v33

    move/from16 v29, v32

    .line 849
    move/from16 v32, v29

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    .line 850
    const/16 v32, 0x0

    move/from16 v29, v32

    .line 853
    :cond_1e
    move-object/from16 v32, v24

    move/from16 v33, v28

    move/from16 v34, v29

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    .line 864
    :goto_d
    move/from16 v32, v7

    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredState()I

    move-result v33

    const/16 v34, -0x100

    move/from16 v0, v33

    and-int/lit16 v0, v0, -0x100

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v32

    move/from16 v7, v32

    .line 868
    :cond_1f
    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v32, v0

    move-object/from16 v33, v25

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v27, v32

    .line 869
    move-object/from16 v32, v24

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move/from16 v33, v27

    add-int v32, v32, v33

    move/from16 v28, v32

    .line 870
    move/from16 v32, v6

    move/from16 v33, v28

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v6, v32

    .line 872
    move/from16 v32, v13

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_20

    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_24

    :cond_20
    const/16 v32, 0x0

    :goto_e
    move/from16 v29, v32

    .line 875
    move/from16 v32, v8

    move/from16 v33, v29

    if-eqz v33, :cond_25

    move/from16 v33, v27

    :goto_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v8, v32

    .line 878
    move/from16 v32, v10

    if-eqz v32, :cond_21

    move-object/from16 v32, v25

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_26

    :cond_21
    const/16 v32, 0x0

    :goto_10
    move/from16 v10, v32

    .line 880
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    move/from16 v32, v0

    move/from16 v30, v32

    .line 881
    move-object/from16 v32, v2

    move/from16 v33, v30

    move/from16 v34, v30

    move-object/from16 v35, v24

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getMeasuredHeight()I

    move-result v35

    add-int v34, v34, v35

    move-object/from16 v35, v25

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v25

    move-object/from16 v0, v35

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v35, v2

    move-object/from16 v36, v24

    invoke-virtual/range {v35 .. v36}, Landroid/support/v21/LayoutLinear;->getNextLocationOffset(Landroid/view/View;)I

    move-result v35

    add-int v34, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->max(II)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v21/LayoutLinear;->mTotalLength:I

    goto/16 :goto_c

    .line 858
    :cond_22
    move-object/from16 v32, v24

    move/from16 v33, v28

    move/from16 v34, v27

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_23

    move/from16 v34, v27

    :goto_11
    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    goto/16 :goto_d

    :cond_23
    const/16 v34, 0x0

    goto :goto_11

    .line 872
    :cond_24
    const/16 v32, 0x1

    goto/16 :goto_e

    .line 875
    :cond_25
    move/from16 v33, v28

    goto/16 :goto_f

    .line 878
    :cond_26
    const/16 v32, 0x1

    goto :goto_10

    .line 889
    :cond_27
    move/from16 v32, v8

    move/from16 v33, v9

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v8, v32

    .line 895
    move/from16 v32, v17

    if-eqz v32, :cond_3

    move/from16 v32, v14

    const/high16 v33, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 896
    move/from16 v32, v12

    const/16 v33, 0x1

    add-int/lit8 v32, v32, -0x1

    move/from16 v22, v32

    :goto_12
    move/from16 v32, v22

    const/16 v33, 0x0

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_3

    .line 897
    move-object/from16 v32, v2

    move/from16 v33, v22

    invoke-virtual/range {v32 .. v33}, Landroid/support/v21/LayoutLinear;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v23, v32

    .line 899
    move-object/from16 v32, v23

    if-eqz v32, :cond_28

    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_29

    .line 896
    :cond_28
    :goto_13
    add-int/lit8 v22, v22, -0x1

    goto :goto_12

    .line 903
    :cond_29
    move-object/from16 v32, v23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Landroid/support/v21/LayoutLinear$LayoutParams;

    move-object/from16 v24, v32

    .line 906
    move-object/from16 v32, v24

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v21/LayoutLinear$LayoutParams;->weight:F

    move/from16 v32, v0

    move/from16 v25, v32

    .line 907
    move/from16 v32, v25

    const/16 v33, 0x0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-lez v32, :cond_28

    .line 908
    move-object/from16 v32, v23

    move-object/from16 v33, v23

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    move/from16 v34, v18

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onAttachedToWindow()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 322
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->drawDividersVertical(Landroid/graphics/Canvas;)V

    .line 324
    :goto_1
    goto :goto_0

    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1781
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1782
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v21.LayoutLinear"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1787
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1788
    move-object v5, v1

    :try_start_0
    const-string v6, "android.support.v21.LayoutLinear"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 1444
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v0

    iget v7, v7, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1445
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->layoutVertical()V

    .line 1447
    :goto_0
    return-void

    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 596
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/LayoutLinear;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 597
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/LayoutLinear;->measureVertical(II)V

    .line 599
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v21/LayoutLinear;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v21/LayoutLinear;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 10
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 533
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x0

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 534
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "base aligned child index out "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "of range (0, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v21/LayoutLinear;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 537
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mBaselineAlignedChildIndex:I

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    .line 279
    :goto_0
    return-void

    .line 270
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v21/LayoutLinear;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 271
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 272
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    .line 273
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    .line 278
    :goto_1
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/support/v21/LayoutLinear;->setWillNotDraw(Z)V

    .line 279
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    goto :goto_0

    .line 275
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mDividerWidth:I

    .line 276
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mDividerHeight:I

    goto :goto_1

    .line 278
    :cond_2
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public setDividerPadding(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1712
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/LayoutLinear;->mGravity:I

    move v4, v1

    if-eq v3, v4, :cond_2

    .line 1713
    move v3, v1

    const v4, 0x800007

    and-int/2addr v3, v4

    const/4 v4, 0x0

    if-ne v3, v4, :cond_0

    .line 1714
    move v3, v1

    const v4, 0x800003

    or-int/2addr v3, v4

    move v1, v3

    .line 1717
    :cond_0
    move v3, v1

    const/16 v4, 0x70

    and-int/lit8 v3, v3, 0x70

    const/4 v4, 0x0

    if-ne v3, v4, :cond_1

    .line 1718
    move v3, v1

    const/16 v4, 0x30

    or-int/lit8 v3, v3, 0x30

    move v1, v3

    .line 1721
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mGravity:I

    .line 1722
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1728
    move-object v0, p0

    move v1, p1

    move v5, v1

    const v6, 0x800007

    and-int/2addr v5, v6

    move v3, v5

    .line 1729
    move-object v5, v0

    iget v5, v5, Landroid/support/v21/LayoutLinear;->mGravity:I

    const v6, 0x800007

    and-int/2addr v5, v6

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 1730
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mGravity:I

    const v7, -0x800008

    and-int/2addr v6, v7

    move v7, v3

    or-int/2addr v6, v7

    iput v6, v5, Landroid/support/v21/LayoutLinear;->mGravity:I

    .line 1731
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/v21/LayoutLinear;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1685
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v21/LayoutLinear;->mOrientation:I

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 1686
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mOrientation:I

    .line 1687
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    if-eq v3, v4, :cond_0

    .line 221
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    .line 223
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1737
    move-object v0, p0

    move v1, p1

    move v5, v1

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    move v3, v5

    .line 1738
    move-object v5, v0

    iget v5, v5, Landroid/support/v21/LayoutLinear;->mGravity:I

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 1739
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Landroid/support/v21/LayoutLinear;->mGravity:I

    const/16 v7, -0x71

    and-int/lit8 v6, v6, -0x71

    move v7, v3

    or-int/2addr v6, v7

    iput v6, v5, Landroid/support/v21/LayoutLinear;->mGravity:I

    .line 1740
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v21/LayoutLinear;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 6
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 591
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/support/v21/LayoutLinear;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method
