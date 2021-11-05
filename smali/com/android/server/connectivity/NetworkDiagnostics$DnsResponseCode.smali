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
    .locals 9

    .line 111
    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NOERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "FORMERR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "SERVFAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NXDOMAIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NOTIMP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "REFUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    sget-object v8, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v8, v1, v2

    sget-object v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    const-class v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;
    .locals 1

    .line 111
    sget-object v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method
