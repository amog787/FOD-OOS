.class public final Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;
.super Ljava/lang/Object;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticationEvent"
.end annotation


# instance fields
.field private mAuthenticated:Z

.field private mError:I

.field private mLatency:J

.field private mStartTime:J

.field private mUser:I

.field private mVendorError:I


# direct methods
.method constructor <init>(JJZIII)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "latency"    # J
    .param p5, "authenticated"    # Z
    .param p6, "error"    # I
    .param p7, "vendorError"    # I
    .param p8, "user"    # I

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide p1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mStartTime:J

    .line 126
    iput-wide p3, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mLatency:J

    .line 127
    iput-boolean p5, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mAuthenticated:Z

    .line 128
    iput p6, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mError:I

    .line 129
    iput p7, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mVendorError:I

    .line 130
    iput p8, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mUser:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 113
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mAuthenticated:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 113
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mLatency:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;

    .line 113
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mError:I

    return v0
.end method


# virtual methods
.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mLatency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\tAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mAuthenticated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tVendorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mVendorError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mError:I

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;->mVendorError:I

    .line 140
    invoke-static {p1, v1, v2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method
