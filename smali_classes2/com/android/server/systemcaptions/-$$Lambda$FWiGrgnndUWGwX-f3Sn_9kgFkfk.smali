.class public final synthetic Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;

    invoke-direct {v0}, Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;-><init>()V

    sput-object v0, Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;->INSTANCE:Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {p1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->handleDestroy()V

    return-void
.end method
