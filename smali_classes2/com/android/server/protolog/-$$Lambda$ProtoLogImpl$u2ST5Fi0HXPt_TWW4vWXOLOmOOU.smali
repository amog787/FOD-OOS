.class public final synthetic Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/android/server/protolog/ProtoLogImpl;->lambda$logToProto$1(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
