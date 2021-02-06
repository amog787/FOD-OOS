.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$EI4Oe4vlsDKieYi6iTTlm_g_DcI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->lambda$initialize$1(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method
