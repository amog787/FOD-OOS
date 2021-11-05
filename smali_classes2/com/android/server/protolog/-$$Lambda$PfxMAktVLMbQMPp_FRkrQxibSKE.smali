.class public final synthetic Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;

    invoke-direct {v0}, Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;-><init>()V

    sput-object v0, Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/protolog/common/IProtoLogGroup;

    invoke-interface {p1}, Lcom/android/server/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
