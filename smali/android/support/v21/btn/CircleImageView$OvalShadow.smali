.class Landroid/support/v21/btn/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v21/btn/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field private final this$0:Landroid/support/v21/btn/CircleImageView;


# direct methods
.method public constructor <init>(Landroid/support/v21/btn/CircleImageView;II)V
    .locals 16

    .prologue
    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->this$0:Landroid/support/v21/btn/CircleImageView;

    .line 125
    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 126
    move-object v5, v0

    move v6, v2

    iput v6, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowRadius:I

    .line 127
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mCircleDiameter:I

    .line 128
    move-object v5, v0

    new-instance v6, Landroid/graphics/RadialGradient;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget v8, v8, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mCircleDiameter:I

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mCircleDiameter:I

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowRadius:I

    int-to-float v10, v10

    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    const/4 v12, 0x0

    check-cast v12, [F

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v6, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 132
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v5

    return-void

    .line 128
    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method

.method static access$0(Landroid/support/v21/btn/CircleImageView$OvalShadow;)Landroid/support/v21/btn/CircleImageView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v21/btn/CircleImageView$OvalShadow;->this$0:Landroid/support/v21/btn/CircleImageView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView$OvalShadow;->this$0:Landroid/support/v21/btn/CircleImageView;

    invoke-virtual {v7}, Landroid/support/v21/btn/CircleImageView;->getWidth()I

    move-result v7

    move v4, v7

    .line 138
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v21/btn/CircleImageView$OvalShadow;->this$0:Landroid/support/v21/btn/CircleImageView;

    invoke-virtual {v7}, Landroid/support/v21/btn/CircleImageView;->getHeight()I

    move-result v7

    move v5, v7

    .line 139
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move v9, v5

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mCircleDiameter:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move-object v11, v0

    iget v11, v11, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowRadius:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move v9, v5

    const/4 v10, 0x2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Landroid/support/v21/btn/CircleImageView$OvalShadow;->mCircleDiameter:I

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
