.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$FhvLqBbd_XMsJK45WV5Mlt8JSYM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, [B

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->lambda$FhvLqBbd_XMsJK45WV5Mlt8JSYM(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BJ)V

    return-void
.end method
