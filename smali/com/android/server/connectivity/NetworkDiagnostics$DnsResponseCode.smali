.class public final enum Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
.super Ljava/lang/Enum;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

.field public static final enum SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 99
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v1, 0x0

    const-string v2, "NOERROR"

    invoke-direct {v0, v2, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v2, 0x1

    const-string v3, "FORMERR"

    invoke-direct {v0, v3, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v3, 0x2

    const-string v4, "SERVFAIL"

    invoke-direct {v0, v4, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v4, 0x3

    const-string v5, "NXDOMAIN"

    invoke-direct {v0, v5, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v5, 0x4

    const-string v6, "NOTIMP"

    invoke-direct {v0, v6, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v6, 0x5

    const-string v7, "REFUSED"

    invoke-direct {v0, v7, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    sget-object v7, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const-class v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method
