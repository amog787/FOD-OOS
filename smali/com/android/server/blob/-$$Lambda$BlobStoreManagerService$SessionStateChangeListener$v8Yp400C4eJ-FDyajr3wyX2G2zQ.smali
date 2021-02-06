.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;

    invoke-direct {v0}, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;-><init>()V

    sput-object v0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;->INSTANCE:Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ;

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

    check-cast p1, Lcom/android/server/blob/BlobStoreManagerService;

    check-cast p2, Lcom/android/server/blob/BlobStoreSession;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->lambda$onStateChanged$0(Ljava/lang/Object;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method
