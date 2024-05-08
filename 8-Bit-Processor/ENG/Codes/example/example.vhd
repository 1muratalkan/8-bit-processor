-- All Instructions:
constant YUKLE_A_SBT 			: std_logic_vector (7 downto 0) := x"86";
constant YUKLE_A	 			: std_logic_vector (7 downto 0) := x"87";
constant YUKLE_B_SBT 			: std_logic_vector (7 downto 0) := x"88";
constant YUKLE_B	 			: std_logic_vector (7 downto 0) := x"89";
constant KAYDET_A	 			: std_logic_vector (7 downto 0) := x"96";
constant KAYDET_B	 			: std_logic_vector (7 downto 0) := x"97";
constant TOPLA_AB 				: std_logic_vector (7 downto 0) := x"42";
constant CIKAR_AB 				: std_logic_vector (7 downto 0) := x"43";
constant AND_AB 				: std_logic_vector (7 downto 0) := x"44";
constant OR_AB 					: std_logic_vector (7 downto 0) := x"45";
constant ARTTIR_A 				: std_logic_vector (7 downto 0) := x"46";
constant ARTTIR_B				: std_logic_vector (7 downto 0) := x"47";
constant DUSUR_A 				: std_logic_vector (7 downto 0) := x"48";
constant DUSUR_B 				: std_logic_vector (7 downto 0) := x"49";
constant ATLA 					: std_logic_vector (7 downto 0) := x"20";	-- Unconditional jump		
constant ATLA_NEGATIFSE 		: std_logic_vector (7 downto 0) := x"21";	-- N = 1
constant ATLA_POZITIFSE 		: std_logic_vector (7 downto 0) := x"22";	-- N = 0
constant ATLA_ESITSE_SIFIR		: std_logic_vector (7 downto 0) := x"23";	-- Z = 1
constant ATLA_DEGILSE_SIFIR 	: std_logic_vector (7 downto 0) := x"24";	-- Z = 0
constant ATLA_OVERFLOW_VARSA 	: std_logic_vector (7 downto 0) := x"25";	-- V = 1
constant ATLA_OVERFLOW_YOKSA	: std_logic_vector (7 downto 0) := x"26";	-- V = 0
constant ATLA_ELDE_VARSA 		: std_logic_vector (7 downto 0) := x"27";	-- C = 1
constant ATLA_ELDE_YOKSA 		: std_logic_vector (7 downto 0) := x"28";	-- C = 0


type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);
	constant ROM : rom_type := (	
                                	0 => YUKLE_A_SBT,   
									1 => x"AA",
									2 => KAYDET_A,
									3 => x"E0",
									4 => ATLA,
									5 => x"00",
									others => x"00"

								);
--------------------------------------------------------------------------
								
type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);
	constant ROM : rom_type := (	
                                	0	=> YUKLE_A_SBT,
									1	=> x"2F",
									2	=> YUKLE_B_SBT,
									3	=> x"41",
									4	=> TOPLA_AB,
									5	=> KAYDET_A,
									6   => x"80",
									7   => ATLA,
									8   => x"00",									
									others 	=> x"00"
								);
								
--------------------------------------------------------------------------
	
type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);
	constant ROM : rom_type := (	
                                	0	=> YUKLE_A,
									1	=> x"F0",	-- input port-00
									2	=> YUKLE_B,
									3	=> x"F1",	-- input port-01		
									4 	=> TOPLA_AB,
									5   => ATLA_ESITSE_SIFIR,
									6   => x"0B",		
									7   => KAYDET_A,
									8   => X"80",	
									9	=> ATLA,
									10	=> x"20",
									11	=> YUKLE_A,
									12	=> x"F2",	-- input port-02	
									13  => ATLA,
									14  => x"04",											
									others 	=> x"00"
								);
--------------------------------------------------------------------------			