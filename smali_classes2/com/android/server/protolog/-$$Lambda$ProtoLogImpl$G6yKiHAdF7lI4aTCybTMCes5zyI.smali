.class public final synthetic Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/protolog/common/IProtoLogGroup;

    invoke-static {p1}, Lcom/android/server/protolog/ProtoLogImpl;->lambda$getStatus$4(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result p1

    return p1
.end method
