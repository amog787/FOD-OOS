.class final enum Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
.super Ljava/lang/Enum;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValidationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

.field public static final enum SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 184
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 185
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const-string v1, "FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 186
    new-instance v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    const-string v1, "SUCCEEDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 183
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    sget-object v5, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->$VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    .locals 1

    .line 183
    sget-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->$VALUES:[Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    return-object v0
.end method
