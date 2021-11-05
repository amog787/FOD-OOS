.class interface abstract Lcom/android/server/IpSecService$IpSecServiceConfiguration;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IpSecServiceConfiguration"
.end annotation


# static fields
.field public static final GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration$1;

    invoke-direct {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-void
.end method


# virtual methods
.method public abstract getNetdInstance()Landroid/net/INetd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
