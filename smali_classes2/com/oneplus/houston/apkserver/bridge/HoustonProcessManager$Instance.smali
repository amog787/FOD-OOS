.class Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;
.super Ljava/lang/Object;
.source "HoustonProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;)V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;->INSTANCE:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;->INSTANCE:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    return-object v0
.end method
