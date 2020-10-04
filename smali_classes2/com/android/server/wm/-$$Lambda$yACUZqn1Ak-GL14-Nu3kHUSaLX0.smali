.class public final synthetic Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$yACUZqn1Ak-GL14-Nu3kHUSaLX0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    return-void
.end method
