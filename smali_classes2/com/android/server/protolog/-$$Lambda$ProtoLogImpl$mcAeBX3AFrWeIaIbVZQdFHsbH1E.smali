.class public final synthetic Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Lcom/android/server/protolog/ProtoLogImpl;->lambda$logToProto$2(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method
