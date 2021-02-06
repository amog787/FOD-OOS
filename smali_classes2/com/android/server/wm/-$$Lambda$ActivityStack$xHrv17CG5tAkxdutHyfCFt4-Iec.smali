.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$xHrv17CG5tAkxdutHyfCFt4-Iec;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->lambda$xHrv17CG5tAkxdutHyfCFt4-Iec(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method
