.class public Lcom/android/server/signedconfig/SignedConfigEvent;
.super Ljava/lang/Object;
.source "SignedConfigEvent.java"


# instance fields
.field public fromPackage:Ljava/lang/String;

.field public status:I

.field public type:I

.field public verifiedWith:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    .line 26
    iput v0, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 27
    iput v0, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    .line 29
    iput v0, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    return-void
.end method


# virtual methods
.method public send()V
    .locals 6

    .line 35
    iget v1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->type:I

    iget v2, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    iget v3, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->version:I

    iget-object v4, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->fromPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    const/16 v0, 0x7b

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;I)V

    .line 37
    return-void
.end method
