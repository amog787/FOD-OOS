.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field deviceHasKeyguard:Z

.field disabled:Z

.field dreaming:Z

.field public enabled:Z

.field inputRestricted:Z

.field public interactiveState:I

.field isFingerprintAuthenticating:Z

.field isPocketModeActive:Z

.field occluded:Z

.field public offReason:I

.field public screenState:I

.field secure:Z

.field showing:Z

.field showingAndNotOccluded:Z

.field systemIsReady:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    .line 64
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 61
    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 101
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 102
    return-void
.end method
