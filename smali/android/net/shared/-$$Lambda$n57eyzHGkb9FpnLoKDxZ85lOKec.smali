.class public final synthetic Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;

    invoke-direct {v0}, Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;-><init>()V

    sput-object v0, Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;->INSTANCE:Landroid/net/shared/-$$Lambda$n57eyzHGkb9FpnLoKDxZ85lOKec;

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

    check-cast p1, Landroid/net/InformationElementParcelable;

    invoke-static {p1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->fromStableParcelable(Landroid/net/InformationElementParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    move-result-object p1

    return-object p1
.end method
