.class Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationAnimationPair"
.end annotation


# instance fields
.field mEnter:I

.field mExit:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayRotation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/DisplayRotation$1;

    .line 89
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;-><init>()V

    return-void
.end method
