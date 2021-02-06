.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;

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

    check-cast p1, Lcom/android/server/wm/ActivityStackSupervisor;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->lambda$GTQdt2-hJbSgeh3nbBxR-rvVTqw(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/Task;)V

    return-void
.end method
