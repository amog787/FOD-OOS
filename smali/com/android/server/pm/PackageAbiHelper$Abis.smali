.class public final Lcom/android/server/pm/PackageAbiHelper$Abis;
.super Ljava/lang/Object;
.source "PackageAbiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageAbiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Abis"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public final primary:Ljava/lang/String;

.field public final secondary:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 127
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->packageName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "secondary"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method public applyTo(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 137
    invoke-interface {v0, v1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 138
    return-void
.end method

.method public associatePackageName(Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->packageName:Ljava/lang/String;

    .line 116
    return-object p0
.end method
