.class public final synthetic Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentController$sPmaborOkBSSEP2wiimxXw-eYDQ;

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

    check-cast p1, Lcom/android/server/am/PendingIntentController;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-static {p1, p2, p3}, Lcom/android/server/am/PendingIntentController;->lambda$sPmaborOkBSSEP2wiimxXw-eYDQ(Lcom/android/server/am/PendingIntentController;Landroid/os/IBinder;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
