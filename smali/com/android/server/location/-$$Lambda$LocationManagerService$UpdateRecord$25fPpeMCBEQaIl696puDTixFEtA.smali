.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;

    invoke-direct {v0}, Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;-><init>()V

    sput-object v0, Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService$UpdateRecord;->lambda$new$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
