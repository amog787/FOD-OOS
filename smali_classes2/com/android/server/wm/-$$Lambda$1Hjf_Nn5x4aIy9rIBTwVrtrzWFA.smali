.class public final synthetic Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    check-cast p1, Landroid/view/SurfaceSession;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method
