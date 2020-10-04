.class public final synthetic Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/location/GnssVisibilityControl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:B

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:B

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:B

.field private final synthetic f$7:Z

.field private final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$0:Lcom/android/server/location/GnssVisibilityControl;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$1:Ljava/lang/String;

    iput-byte p3, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$2:B

    iput-object p4, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$3:Ljava/lang/String;

    iput-byte p5, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$4:B

    iput-object p6, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$5:Ljava/lang/String;

    iput-byte p7, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$6:B

    iput-boolean p8, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$7:Z

    iput-boolean p9, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$8:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$0:Lcom/android/server/location/GnssVisibilityControl;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$1:Ljava/lang/String;

    iget-byte v2, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$2:B

    iget-object v3, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$3:Ljava/lang/String;

    iget-byte v4, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$4:B

    iget-object v5, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$5:Ljava/lang/String;

    iget-byte v6, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$6:B

    iget-boolean v7, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$7:Z

    iget-boolean v8, p0, Lcom/android/server/location/-$$Lambda$GnssVisibilityControl$rgPyvoFYNphS-9zV3fbeQCNLxa8;->f$8:Z

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GnssVisibilityControl;->lambda$reportNfwNotification$3$GnssVisibilityControl(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method
