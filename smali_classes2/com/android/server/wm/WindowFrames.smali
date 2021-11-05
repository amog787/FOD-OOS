.class public Lcom/android/server/wm/WindowFrames;
.super Ljava/lang/Object;
.source "WindowFrames.java"


# static fields
.field private static final sTmpSB:Ljava/lang/StringBuilder;


# instance fields
.field final mCompatFrame:Landroid/graphics/Rect;

.field final mContainingFrame:Landroid/graphics/Rect;

.field private mContentChanged:Z

.field public final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field private mContentInsetsChanged:Z

.field public final mDecorFrame:Landroid/graphics/Rect;

.field mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field private mDisplayCutoutChanged:Z

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field final mFrame:Landroid/graphics/Rect;

.field private mFrameSizeChanged:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field private mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field final mLastFrame:Landroid/graphics/Rect;

.field final mLastRelFrame:Landroid/graphics/Rect;

.field final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field public final mParentFrame:Landroid/graphics/Rect;

.field private mParentFrameWasClippedByDisplayCutout:Z

.field final mRelFrame:Landroid/graphics/Rect;

.field public final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsChanged:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field public final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field private mVisibleInsetsChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 133
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 138
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "parentFrame"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentFrame"    # Landroid/graphics/Rect;
    .param p4, "visibleFrame"    # Landroid/graphics/Rect;
    .param p5, "decorFrame"    # Landroid/graphics/Rect;
    .param p6, "stableFrame"    # Landroid/graphics/Rect;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 133
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 138
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    .line 176
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 178
    return-void
.end method

.method private didFrameSizeChange()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method calculateDockedDividerInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "cutoutInsets"    # Landroid/graphics/Rect;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 229
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 230
    return-void
.end method

.method calculateInsets(ZZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "windowsAreFloating"    # Z
    .param p2, "inFullscreenContainer"    # Z
    .param p3, "windowBounds"    # Landroid/graphics/Rect;

    .line 245
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 247
    .local v2, "overrideRightInset":Z
    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 250
    .local v0, "overrideBottomInset":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 251
    if-eqz v2, :cond_2

    iget v5, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 252
    :goto_2
    if-eqz v0, :cond_3

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 250
    :goto_3
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 257
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Frames: containing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    decor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mFrame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cutout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 366
    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cur insets: content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Lst insets: content="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 339
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 340
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 341
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 342
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 343
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 344
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 345
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 347
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 348
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 349
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 350
    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000eL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 352
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 353
    return-void
.end method

.method getInsetsChangedInfo()Ljava/lang/String;
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentInsetsChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mContentInsetsChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    .line 383
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " visibleInsetsChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsetsChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    .line 385
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stableInsetsChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowFrames;->mStableInsetsChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    .line 387
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayCutoutChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutoutChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method getInsetsInfo()Ljava/lang/String;
    .locals 2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    .line 377
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " si="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    .line 378
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method hasContentChanged()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    return v0
.end method

.method offsetFrames(II)V
    .locals 1
    .param p1, "layoutXDiff"    # I
    .param p2, "layoutYDiff"    # I

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 275
    return-void
.end method

.method parentFrameWasClippedByDisplayCutout()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    return v0
.end method

.method resetInsetsChanged()V
    .locals 1

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsetsChanged:Z

    .line 299
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsetsChanged:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsetsChanged:Z

    .line 301
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 302
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutoutChanged:Z

    .line 303
    return-void
.end method

.method resetLastContentInsets()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 321
    return-void
.end method

.method scaleInsets(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 268
    return-void
.end method

.method public setContentChanged(Z)V
    .locals 0
    .param p1, "contentChanged"    # Z

    .line 328
    iput-boolean p1, p0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 329
    return-void
.end method

.method public setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 0
    .param p1, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 200
    iput-object p1, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 201
    return-void
.end method

.method public setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "parentFrame"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentFrame"    # Landroid/graphics/Rect;
    .param p4, "visibleFrame"    # Landroid/graphics/Rect;
    .param p5, "decorFrame"    # Landroid/graphics/Rect;
    .param p6, "stableFrame"    # Landroid/graphics/Rect;

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 188
    return-void
.end method

.method public setParentFrameWasClippedByDisplayCutout(Z)V
    .locals 0
    .param p1, "parentFrameWasClippedByDisplayCutout"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    .line 193
    return-void
.end method

.method setReportResizeHints()Z
    .locals 4

    .line 283
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mContentInsetsChanged:Z

    .line 284
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsetsChanged:Z

    .line 285
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mStableInsetsChanged:Z

    .line 286
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 287
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutoutChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutoutChanged:Z

    .line 288
    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mContentInsetsChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsetsChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mStableInsetsChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method updateLastInsetValues()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 313
    return-void
.end method
