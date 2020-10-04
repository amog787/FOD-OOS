.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchObserverRegistryImpl$UGY1OclnLIQLMEL9B55qjERFf4o;

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

    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    check-cast p2, [B

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->lambda$UGY1OclnLIQLMEL9B55qjERFf4o(Lcom/android/server/wm/LaunchObserverRegistryImpl;[BI)V

    return-void
.end method
