.class public final synthetic Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;

    invoke-direct {v0}, Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;-><init>()V

    sput-object v0, Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;->INSTANCE:Landroid/net/shared/-$$Lambda$qVdKXOBVced7rdGB-dMQlkPbLW4;

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

    check-cast p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->toStableParcelable()Landroid/net/InformationElementParcelable;

    move-result-object p1

    return-object p1
.end method
