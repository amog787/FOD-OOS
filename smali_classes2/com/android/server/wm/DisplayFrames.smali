.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# instance fields
.field public final mContent:Landroid/graphics/Rect;

.field public final mCurrent:Landroid/graphics/Rect;

.field public mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field public mDisplayWidth:I

.field public final mDock:Landroid/graphics/Rect;

.field public final mRestricted:Landroid/graphics/Rect;

.field public mRotation:I

.field public final mStable:Landroid/graphics/Rect;

.field public final mStableFullscreen:Landroid/graphics/Rect;

.field public final mSystem:Landroid/graphics/Rect;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public final mVoiceContent:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;
    .param p3, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 93
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 96
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 109
    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 111
    return-void
.end method

.method private dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p4}, Ljava/io/PrintWriter;->println()V

    .line 179
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayFrames w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "myPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-string v2, "mStable"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    const-string v2, "mStableFullscreen"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 167
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    const-string v2, "mDock"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 168
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    const-string v2, "mCurrent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    const-string v2, "mSystem"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    const-string v2, "mContent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    const-string v2, "mVoiceContent"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    const-string v2, "mRestricted"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    const-string v2, "mUnrestricted"

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/android/server/wm/DisplayFrames;->dumpFrame(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 156
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 157
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 159
    return-void
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onBeginLayout()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 136
    .local v0, "c":Landroid/view/DisplayCutout;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    if-lez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 142
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    if-lez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 145
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    if-lez v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 149
    .end local v0    # "c":Landroid/view/DisplayCutout;
    :cond_3
    return-void
.end method

.method public onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V
    .locals 1
    .param p1, "info"    # Landroid/view/DisplayInfo;
    .param p2, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 114
    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 115
    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 116
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 117
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayInfoCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 118
    return-void
.end method
