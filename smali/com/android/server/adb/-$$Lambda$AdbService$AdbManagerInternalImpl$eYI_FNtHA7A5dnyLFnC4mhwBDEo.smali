.class public final synthetic Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;

    invoke-direct {v0}, Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;-><init>()V

    sput-object v0, Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;->INSTANCE:Lcom/android/server/adb/-$$Lambda$AdbService$AdbManagerInternalImpl$eYI_FNtHA7A5dnyLFnC4mhwBDEo;

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

    check-cast p1, Lcom/android/server/adb/AdbService;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->lambda$startAdbdForTransport$0(Ljava/lang/Object;ZB)V

    return-void
.end method
