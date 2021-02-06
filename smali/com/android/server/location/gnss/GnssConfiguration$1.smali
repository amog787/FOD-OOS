.class Lcom/android/server/location/gnss/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssConfiguration;

.field final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssConfiguration;

    .line 277
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->this$0:Lcom/android/server/location/gnss/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 279
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$R-XdOLUsEDRXhjoDIenWKgf7IIw;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$R-XdOLUsEDRXhjoDIenWKgf7IIw;

    const-string v0, "SUPL_VER"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$LZqgdWjzL89MPY7XrWAf7kOV-qQ;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$LZqgdWjzL89MPY7XrWAf7kOV-qQ;

    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->access$000(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 283
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$hxxAUFBhOQOZhojaDFP5qV8f6uw;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$hxxAUFBhOQOZhojaDFP5qV8f6uw;

    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_0
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$-SleO6oWMpd_g4bdtKw-goYffkk;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$-SleO6oWMpd_g4bdtKw-goYffkk;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$Cz52q0m5WBoomfji3esjJI-B-x8;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$Cz52q0m5WBoomfji3esjJI-B-x8;

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$IwddZEVhNi3yUzbgOgz_w_HqSjE;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$IwddZEVhNi3yUzbgOgz_w_HqSjE;

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->access$100(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 293
    sget-object p2, Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$fVD4pCIHbDwnv6GFSEn42hYZi6Y;->INSTANCE:Lcom/android/server/location/gnss/-$$Lambda$GnssConfiguration$1$fVD4pCIHbDwnv6GFSEn42hYZi6Y;

    const-string v0, "GPS_LOCK"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_1
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 279
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 280
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 283
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 286
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 288
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$400(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 290
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$300(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 293
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$200(I)Z

    move-result v0

    return v0
.end method
