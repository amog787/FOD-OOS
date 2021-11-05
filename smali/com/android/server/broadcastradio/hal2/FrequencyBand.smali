.class final enum Lcom/android/server/broadcastradio/hal2/FrequencyBand;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/broadcastradio/hal2/FrequencyBand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

.field public static final enum UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 24
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "FM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 25
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_LW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 26
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_MW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 27
    new-instance v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const-string v1, "AM_SW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/broadcastradio/hal2/FrequencyBand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    .line 22
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v7, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0
.end method

.method public static values()[Lcom/android/server/broadcastradio/hal2/FrequencyBand;
    .locals 1

    .line 22
    sget-object v0, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->$VALUES:[Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    invoke-virtual {v0}, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    return-object v0
.end method
